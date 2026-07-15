# 受験生向け数学目覚ましアプリ 詳細設計書 v1.0（第3部）

> 改善版要件定義書v1.0（math-alarm-requirements-v1.md）を前提とする設計書。

---

## 1. コンセプト

**「数学を解かなければ止められない目覚まし」**
目的の優先順位：①脳の即時覚醒 ②二度寝防止 ③勉強モードへの切替 ④学習効果（副次的）。
数学は「学習」ではなく「覚醒トリガー」として扱う。UI・問題設計・難易度調整のすべての判断基準は「朝、眠い頭でも詰まらずに解け、かつ寝ぼけたまま適当に押して通過できない程度の思考負荷があるか」に置く。

---

## 2. ターゲット分析

| 属性 | 内容 |
|---|---|
| 中学生 | 定期テスト対策層。保護者の関与あり（未成年配慮が必要）。出題範囲は中学数学中心。 |
| 高校生 | 部活・塾との両立で睡眠不足になりがちな層。数I・A中心、進度により数II・Bへ拡大。 |
| 大学受験生（高3・既卒） | 最も切実に「確実な起床」を必要とする層。共通テスト・二次試験対策と直結する分析機能への期待が高い。有料転換の主要ターゲット。 |

課金意欲は受験生（高3・既卒）が最も高く、無料継続利用は中学生・高1高2が中心になる想定。この非対称性をマネタイズ設計（第19章）に反映する。

---

## 3. 競合分析

| カテゴリ | 代表例 | 強み | 弱み（本アプリの機会） |
|---|---|---|---|
| 計算式目覚まし系（既存ジャンル） | Alarmy等の「タスクをこなさないと止まらない」目覚ましアプリ | 強制力の実装ノウハウが成熟、知名度 | 出題内容が受験数学に特化していない、単元別カスタマイズがない |
| 学習管理・勉強タイマー系 | Studyplus等 | 学習記録・コミュニティ機能が強い | 「起床」に特化していない、朝一番のペインを解決しない |
| 目覚まし単体アプリ | 標準の時計アプリ、二度寝防止音量系アプリ | 安定性・信頼性が高い | 知的な覚醒要素がなく、受験生特有のニーズに応えない |

**差別化ポイント（第4章で詳述）**は「受験数学の単元粒度でのカスタマイズ性」と「起床データを学習データとして活用する統計・分析」。

---

## 4. 差別化

1. 単元・難易度・出題比率まで細かく設定できる目覚ましは競合にほぼ存在しない。
2. 起床時の解答データ（速度・正答率）を「学習継続日数」「志望校カウントダウン」等のモチベーション機能に接続し、単なる目覚ましを超えた「受験生活の一部」として位置づける。
3. π/e/sin/cos/tan/log/√/分数を専用ボタンで正確に扱える入力方式（構造的厳密一致判定）により、従来の「答えは整数のみ」的な目覚ましアプリでは出題不可能だった高校数学の主要単元を出題可能にする。

---

## 5. 機能一覧

### MVP必須機能
- アラーム設定・鳴動・停止（数学問題による解除のみ、スヌーズなし）
- 複数アラーム（無料版3件／有料版無制限）
- 単元・難易度・出題比率・制限時間・問題数の設定
- 数学問題生成エンジン（オフライン完結）
- 数値入力＋π/e/sin/cos/tan/log/√/分数の専用ボタン
- 採点（構造的厳密一致判定）
- 誤答時の再挑戦、および救済モード（一定回数誤答で易化）
- 基本統計（起床成功率・連続起床日数・平均解答時間・平均正答率）
- 端末再起動後のアラーム再登録
- オンボーディング（バッテリー最適化除外・通知許可・自動起動許可の設定誘導）

### Ver1.1以降
- 週間・月間レポート、単元別正答率推移
- レベル・バッジ・称号・経験値・ストリーク
- 志望校までの日数カウントダウン・共通テストカウントダウン
- Spotify / Apple Music / YouTube Musicの「起床成功後のご褒美再生」連携
- 端末内mp3ファイルのアラーム音設定

### Ver2.0以降
- AI解説・AI学習分析・AI難易度調整・AIおすすめ出題
- 積分・複素数平面等、構造化データ化が難しい単元の追加
- 詳細な受験校別分析（過去問傾向との相関等、要検討）

---

## 6. 数学問題生成システム

### 6.1 全体アーキテクチャ

```
[出題設定] → [出題バランサー] → [単元別ジェネレーター群] → [バリデータ] → [難易度推定器] → [出題キュー/キャッシュ] → [端末表示]
                                                                                              ↓
                                                                                       [採点器(Judge)]
```

- **出題バランサー（Balancer）**：ユーザー設定（単元比率・難易度・問題数）に従い、どの単元ジェネレーターを何問呼ぶか決定する。直近の履歴（同じ単元・同じパラメータの連続出題を避ける）も考慮する。
- **単元別ジェネレーター（Generator）**：単元ごとに独立したロジック。パラメータ（数値範囲、係数の候補など）をランダムに選び、問題文と正解構造化データ（第7章）を生成する。
- **バリデータ（Validator）**：生成直後に「解が定義域内か」「ゼロ除算が発生しないか」「答えが仕様上出題可能な形（構造化データの型として定義されたもの）に収まっているか」を検証する。不正な場合は再生成する。
- **難易度推定器（Difficulty Estimator）**：単元・数値の大きさ・関数の重ね合わせ数などから推定難易度スコアを算出し、ユーザー設定難易度とのズレを補正する（例：数値が大きすぎる場合は範囲を狭めて再生成）。
- **採点器（Judge）**：第2.2章で定義した構造的厳密一致判定を行う。

### 6.2 パラメータ設計の考え方（共通）
各ジェネレーターは以下のパラメータを持つ設定オブジェクトを受け取る。

```json
{
  "unit": "quadratic_equation",
  "difficulty": 2,
  "numberRange": [1, 12],
  "allowNegative": true,
  "answerTypes": ["number", "fraction"]
}
```

### 6.3 単元別ジェネレーター設計（代表例）

| 単元 | 生成方針 | 正解の構造化データ例 |
|---|---|---|
| 中学：正負の数・四則演算 | 2〜3個の整数とランダム演算子を組み合わせ、計算結果が指定範囲に収まるよう係数を調整 | `{type:"number", value:-7}` |
| 中学：一次方程式 | `ax + b = c` の形でa,b,cをランダム生成し、xが整数になるよう逆算 | `{type:"number", value:4}` |
| 中学：円の面積・円周 | 半径rをランダムに選び、面積=r²π・円周=2rπを正解として保持 | `{type:"constant_multiple", constant:"pi", coeff:25}` |
| 数I：二次方程式 | 判別式が完全平方数になる係数を優先選択（暗算しやすい解）。ただし完全平方数にならない設定も許容し、その場合は√構造で正解を保持 | `{type:"sqrt", arg:2}` または `{type:"number", value:3}` |
| 数I：三角比 | 有名角（0/30/45/60/90/120/135/150/180°）からランダムに選択し、sin/cos/tanの値を構造化データとして保持 | `{type:"trig", func:"tan", angle:75, unit:"deg"}` |
| 数II：指数・対数 | 底と真数をランダムに選び、log構造として保持（きれいな整数値になる組み合わせと、ならない組み合わせの両方を許容） | `{type:"log", base:10, arg:3}` |
| 数A：確率・場合の数 | 分母が2・5のみで構成される設定を優先しつつ、任意の分数も許容（分数構造で保持） | `{type:"fraction", numerator:1, denominator:3}` |
| 数III：微分（多項式のみ、MVP対象外候補） | 多項式の導関数の特定点での値を問う | `{type:"number", value:12}` |

★積分・複素数平面等、上記の型で表現しきれない単元は本設計のスコープ外とし、Ver2.0以降で構造化データの型を拡張する形で対応する。

### 6.4 パフォーマンス・キャッシュ戦略
- 問題生成は端末上でミリ秒オーダーで完結する軽量な演算のみ（サーバー通信なし）。
- アラーム設定時点で、次回鳴動に必要な問題セットを**事前生成してローカルDBにキャッシュ**しておく（鳴動の瞬間に生成負荷や乱数偏りによる遅延を発生させないため）。
- 直近出題した問題（単元・パラメータの組み合わせ）の履歴を保持し、出題バランサーが同一パターンの連続出題を避ける。

### 6.5 テスト容易性
- 全ジェネレーターは乱数シードを外部から注入できる形にし、開発者モード・自動テストで再現可能な出題を生成できるようにする。
- 各ジェネレーターに対し、境界値（最小・最大範囲、ゼロ除算誘発パラメータ等）を含むプロパティベーステストを用意する。

---

## 7. データ構造

### 7.1 正解構造化データ（第2.2章の再掲・正式仕様）

```typescript
type AnswerStructure =
  | { type: "number"; value: number }
  | { type: "fraction"; numerator: number; denominator: number }
  | { type: "sqrt"; arg: number }
  | { type: "trig"; func: "sin" | "cos" | "tan"; angle: number; unit: "deg" | "rad" }
  | { type: "log"; base: number | "e"; arg: number }
  | { type: "constant_multiple"; constant: "pi" | "e"; coeff: number };
```

### 7.2 問題データ

```typescript
interface Problem {
  id: string;
  unit: string;              // 例: "quadratic_equation"
  difficulty: number;        // 1-5
  questionText: string;      // 表示用問題文
  answer: AnswerStructure;
  seed: number;               // 再現用シード
  createdAt: number;
}
```

### 7.3 アラーム設定

```typescript
interface AlarmConfig {
  id: string;
  time: string;               // "06:30"
  repeatDays: number[];        // 0-6 (曜日)
  problemCount: number;
  units: { unitId: string; ratio: number }[];
  difficulty: number;
  timeLimitSeconds: number | null;
  rescueModeEnabled: boolean; // 誤答時救済モード
  soundFile: string;           // ローカル音源ID
  enabled: boolean;
}
```

### 7.4 統計データ

```typescript
interface WakeUpRecord {
  id: string;
  alarmId: string;
  date: string;
  success: boolean;
  totalTimeSeconds: number;
  correctCount: number;
  totalCount: number;
  unitBreakdown: { unitId: string; correct: number; total: number }[];
}
```

---

## 8. UI設計

### 8.1 デザイン原則
- ダークモード基調（朝の寝室・目に優しい）、ただし問題画面は高コントラストで視認性最優先。
- 操作は基本「タップ」のみで完結。長押し・スワイプ操作はアラーム停止フローでは使わない（寝ぼけた状態での誤操作/操作放棄を防ぐ）。
- フォントサイズは数式部分を特に大きく（想定：問題文32px相当以上）。
- アクセシビリティ：文字サイズ拡大設定に対応、色のみに依存しない正誤フィードバック（色＋アイコン＋振動）。

### 8.2 主要画面一覧
1. ホーム画面（アラーム一覧）
2. アラーム設定画面（時刻・曜日・問題数・単元・難易度・制限時間・音源）
3. 単元詳細選択画面（中学/高校 → 科目 → 単元のドリルダウン）
4. アラーム鳴動画面（ロック画面表示含む）
5. 問題回答画面（専用ボタン付き数値入力キーパッド）
6. 正誤フィードバック画面（正解→次の問題へ／不正解→再挑戦）
7. 起床完了画面（統計サマリー・ご褒美音楽起動導線）
8. 統計・レポート画面（週間/月間、単元別正答率推移）
9. モチベーション画面（レベル・バッジ・ストリーク・志望校カウントダウン）
10. 設定画面（通知・バッテリー最適化・音源管理・サブスク管理）
11. オンボーディング画面群（権限設定ウィザード）

### 8.3 数値入力キーパッドのUI要件
- 基本の数字キー（0-9・小数点）を大きく配置。
- π・e・sin・cos・tan・log・√・分数の専用ボタンをキーパッド上部に横並び配置。
- sin/cos/tan/log/√/分数ボタン押下時は、キーパッド全体がその場でミニフォーム（角度ピッカー、底・真数入力等）に切り替わり、確定すると元のキーパッドに戻って値が構造として入力欄にセットされる（画面遷移を伴わない、タップ数最小化のため）。

---

## 9. 画面遷移図

```
[起動]
  └→ (初回のみ) オンボーディング(権限設定) ─┐
                                          ↓
                                   [ホーム画面(アラーム一覧)]
                                     │        │
                          [+新規アラーム]  [既存アラームをタップ]
                                     │        │
                                     └──→ [アラーム設定画面]
                                              │
                                     [単元詳細選択画面]
                                              │
                                        (保存)→ ホーム画面へ戻る

[指定時刻到達]
  └→ [アラーム鳴動画面]（ロック画面上でも強制表示）
        └→ [問題回答画面]
              │  ├─ 正解 → 次の問題 or [起床完了画面]
              │  └─ 不正解 → 再挑戦（救済モード条件で易化）
              └→ [起床完了画面]
                    ├→ [統計・レポート画面]
                    ├→ [モチベーション画面]
                    └→ (ご褒美音楽連携がONの場合)外部音楽アプリ起動

[ホーム画面] → [設定画面] ⇄ [サブスク管理]
```

---

## 10. Flutterアーキテクチャ

### 10.1 技術選定比較

| 観点 | Flutter | React Native | ネイティブ(Kotlin/Swift) |
|---|---|---|---|
| バックグラウンド/アラーム制御の実装難度 | プラグイン経由でネイティブAPIを叩く必要あり（`android_alarm_manager_plus`等）。iOS側の制約はどの技術でも同じ | 同様にネイティブモジュール実装が必要 | 最も直接的で自由度が高い |
| UI実装効率 | 高い（単一コードベースで両OS） | 高い | 実装コストが2倍（Android/iOS別実装） |
| Codespaces/Claude Codeとの相性 | 良好（`flutter`コマンド、web/エミュレータレスのビルド確認が可能） | 良好だがネイティブモジュール部分は別途ビルド環境が必要になりがち | Codespacesでの実機レスデバッグに難あり（Xcodeが必須） |
| 数式描画・カスタムUI | 独自レンダリングエンジンで細かい表現が容易 | ネイティブUIブリッジ経由でやや制約 | 最も自由だが工数大 |

**結論**：Flutterを採用する。理由は、①本アプリの中核であるアラーム鳴動制御は結局どの技術でもネイティブAPI直叩きが必要になり技術選定による差が小さいこと、②UIの反復開発（問題画面・キーパッドのカスタムUI）の効率がFlutterで高いこと、③GitHub Codespaces + Claude Codeでの開発フロー（Android実機/エミュレータなしでのWeb/ロジック検証、CI）と相性が良いこと。ネイティブ開発は工数的に個人・小規模チームでは非現実的、React Nativeを選ぶ積極的理由が薄い。

### 10.2 ディレクトリ構成

```
lib/
  main.dart
  core/
    di/                    # 依存性注入 (get_it等)
    router/                 # go_router設定
    theme/
    utils/
  features/
    alarm/
      domain/               # entity, repository interface
      data/                 # repository実装, ローカルDB
      application/          # 状態管理 (Riverpod Notifier等)
      presentation/         # 画面・Widget
    problem_generator/
      domain/
      generators/           # 単元別ジェネレーター実装
      judge/                # 採点器
      validator/
      balancer/
    statistics/
    motivation/
    onboarding/
    settings/
    music_integration/       # Ver1.1以降
  shared_widgets/
platform/
  android/                   # AlarmManager, ForegroundService, FullScreenIntent実装
  ios/                       # BGTaskScheduler, Critical Alerts申請対応, Local Notification
test/
  unit/
  widget/
  integration/
```

### 10.3 状態管理
Riverpod（`flutter_riverpod`）を採用。アラーム状態・問題セッション状態・統計状態をそれぞれ独立したNotifierで管理し、テスト容易性を確保する。

### 10.4 バックグラウンド処理・通知
- **Android**：`AlarmManager`（`setExactAndAllowWhileIdle`）でスケジュール、鳴動時は`ForegroundService`を起動し`FullScreenIntent`でロック画面上にアラーム画面を表示。
- **iOS**：`UNUserNotificationCenter`のローカル通知＋`Time Sensitive`割り込みレベルを使用。バックグラウンドでの継続実行はできないため、鳴動処理は「通知が発火した時点でアプリが前面に来る」フローに依存する設計とする。

---

## 11. データベース設計

ローカルDB：**Drift（sqlite3ベース、Flutter向けタイプセーフORM）**を採用（オフライン完結必須のため）。

### 11.1 テーブル定義（概要）

```sql
CREATE TABLE alarms (
  id TEXT PRIMARY KEY,
  time TEXT NOT NULL,
  repeat_days TEXT NOT NULL,       -- JSON配列
  problem_count INTEGER NOT NULL,
  difficulty INTEGER NOT NULL,
  time_limit_seconds INTEGER,
  rescue_mode_enabled INTEGER NOT NULL,
  sound_file TEXT NOT NULL,
  enabled INTEGER NOT NULL
);

CREATE TABLE alarm_units (
  alarm_id TEXT NOT NULL REFERENCES alarms(id),
  unit_id TEXT NOT NULL,
  ratio REAL NOT NULL
);

CREATE TABLE cached_problems (
  id TEXT PRIMARY KEY,
  alarm_id TEXT REFERENCES alarms(id),
  unit TEXT NOT NULL,
  difficulty INTEGER NOT NULL,
  question_text TEXT NOT NULL,
  answer_json TEXT NOT NULL,       -- AnswerStructureをJSON化
  seed INTEGER NOT NULL,
  created_at INTEGER NOT NULL
);

CREATE TABLE wake_up_records (
  id TEXT PRIMARY KEY,
  alarm_id TEXT REFERENCES alarms(id),
  date TEXT NOT NULL,
  success INTEGER NOT NULL,
  total_time_seconds INTEGER NOT NULL,
  correct_count INTEGER NOT NULL,
  total_count INTEGER NOT NULL,
  unit_breakdown_json TEXT NOT NULL
);
```

将来のクラウド同期（任意機能）を見据え、各テーブルに`updated_at`と`synced`カラムを追加しておくことを推奨（Ver1.1でSupabase等との同期を検討する余地を残す）。

---

## 12. API設計（補助機能のみ・オフラインコアには非依存）

コア機能はAPI通信なしで完結するため、API設計はVer1.1以降の補助機能に限定される。

| エンドポイント（例） | 用途 |
|---|---|
| `POST /v1/ai/explain` | AI解説生成（Ver2.0） |
| `GET /v1/ai/recommendation` | AIおすすめ出題パラメータ取得（Ver2.0） |
| （Spotify/Apple MusicのSDK呼び出し） | 起床成功後のご褒美再生（Ver1.1、直接SDK利用でバックエンド不要） |

すべてのAPI通信は「失敗してもコア機能（アラーム・問題・採点）に影響しない」ことを設計原則とする（タイムアウト・オフライン時は該当UIを非表示にするのみ）。

---

## 13. GitHub Codespaces設計

### 13.1 `.devcontainer/devcontainer.json`（概要）

```json
{
  "name": "math-alarm-flutter",
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
  "features": {
    "ghcr.io/devcontainers/features/java:1": { "version": "17" }
  },
  "postCreateCommand": "bash .devcontainer/setup.sh",
  "customizations": {
    "vscode": {
      "extensions": [
        "Dart-Code.flutter",
        "Dart-Code.dart-code",
        "usernamehw.errorlens",
        "eamodio.gitlens"
      ]
    }
  },
  "forwardPorts": [8080]
}
```

### 13.2 セットアップスクリプト方針
- Flutter SDKをbashスクリプトでcloneし、PATHに追加。
- Android実機/エミュレータを前提にせず、`flutter test`（unit/widget）と`flutter build web`（ロジック・UI確認用）を主なローカル検証手段とする。
- 実機確認が必要な場合は、開発者自身の実機とVS Code Remote/`flutter run`のUSBデバッグ、またはWi-Fiデバッグで対応（Codespacesはクラウド環境のためBluetooth/USB直結はできない点に注意。実機は開発者ローカルのVS Code+Codespaces拡張経由での接続、または別途ローカル環境でのみ検証する運用を想定）。
- Android向けビルド確認は`flutter build apk --debug`をCodespaces上のCLIで実行し、成果物をダウンロードして実機にインストールする運用。
- iOSビルドはmacOS環境が必須のためCodespaces単体では完結しない。CI（GitHub Actions + macOSランナー）でのビルド確認を別途設計する。

### 13.3 Git運用・ブランチ戦略
- `main`：常にビルド可能な状態を維持。
- `develop`：機能統合用。
- `feature/*`：個別機能開発。
- コミット前に`flutter analyze` + `flutter test`をローカル/CIで必須実行。
- Claude Codeでの継続開発を前提に、機能追加は「対象ディレクトリを限定したstr_replace/sedベースの差分編集」を基本とし、`npm run build`相当として`flutter build web`または`flutter analyze`での検証後に`git add`（変更ファイルのみ）→`git commit`→`git push`のフローを徹底する。

---

## 14. 使用ライブラリ一覧（主要なもの）

| カテゴリ | ライブラリ |
|---|---|
| 状態管理 | flutter_riverpod |
| ルーティング | go_router |
| ローカルDB | drift（sqlite3） |
| 通知 | flutter_local_notifications |
| バックグラウンド/アラーム | android_alarm_manager_plus, alarm（フルスクリーン起床用の類似プラグイン、要ネイティブ拡張） |
| 音声再生 | just_audio |
| 依存性注入 | get_it |
| 数式・関数計算 | math_expressions もしくは自前実装（三角関数・対数はdart:mathで十分） |
| テスト | flutter_test, mocktail |
| CI | GitHub Actions |

---

## 15. セキュリティ

- ローカルDBに保存するデータは学習・起床データのみで、個人を特定する情報（氏名・連絡先）は原則収集しない。
- 将来クラウド同期を導入する場合は、匿名化された端末IDベースの認証（Firebase Anonymous Auth等）を優先し、実名・メールアドレス必須のアカウント登録は必須要件にしない。
- 広告SDK導入時は、子ども向けポリシー（Google Play Families Policy / Apple App Store子ども向けカテゴリ規定）に沿い、行動ターゲティング広告を無効化する設定を徹底する。
- アプリ内で発行するAPIキー（AI機能等）は、クライアントに直接埋め込まず、サーバーサイド（Cloud Functions等）経由で呼び出す構成にする。

---

## 16. パフォーマンス

- 問題生成は端末上でのみ実行され、目標応答時間は1問あたり50ms未満（体感で遅延を感じさせない）。
- アラーム設定時点で次回分の問題セットを事前生成・キャッシュし、鳴動時の生成待ちを排除する。
- 統計データの月間集計は、鳴動処理とは非同期のバックグラウンドタスクとして計算し、UIスレッドをブロックしない。

---

## 17. MVP

### MVPスコープ（第5章より）
アラーム（スヌーズなし・複数アラーム）、単元/難易度/比率設定、オフライン問題生成（中学数学、数I・A中心＋π/e/sin/cos/tan/log/√/分数ボタンで表現可能な範囲の数II一部）、構造的厳密一致採点、誤答再挑戦＋救済モード、基本統計、権限オンボーディング。

### MVP除外
音楽連携、AI機能、レベル/バッジ等のモチベーション機能、詳細レポート、積分・複素数平面等。

---

## 18. 開発ロードマップ

| バージョン | 内容 |
|---|---|
| MVP | 第17章の通り |
| Ver1.1 | 週間/月間レポート、単元別正答率推移、レベル・バッジ・ストリーク、志望校/共通テストカウントダウン、端末内音源設定 |
| Ver1.2 | Spotify/Apple Music/YouTube Musicご褒美連携、UI/UXの磨き込み（オンボーディング改善含む） |
| Ver2.0 | AI解説・AI学習分析・AI難易度調整、積分等の単元拡張検討 |
| Ver3.0 | AIおすすめ出題、受験校別分析等の高度化、（検討）友人との起床record共有等のソーシャル要素 |

---

## 19. 収益化

- **フリーミアム**：無料版はアラーム3件まで・広告あり（非パーソナライズ広告のみ）。有料サブスクで広告非表示・アラーム無制限・詳細レポート・音楽連携。
- 広告は「起床成功後の画面」にのみ表示し、アラーム鳴動〜停止のフローには一切広告を挟まない（起床を妨げない設計を最優先）。
- 受験生（高3・既卒）向けに「受験直前期プラン」等、季節性を反映した価格施策も検討余地あり。

---

## 20. 将来の拡張

- AI機能はVer2.0以降、サーバーサイドAPI呼び出しの形で追加（コア機能への非依存を維持）。
- 構造化データ型（AnswerStructure）を拡張することで、積分・複素数平面等、現状スコープ外の単元にも将来対応可能な設計にしてある。
- クラウド同期（複数端末間でのアラーム設定・統計の共有）は、匿名認証ベースで将来的に追加可能な設計（DBスキーマに`updated_at`/`synced`列を用意済み）。

## 21. 開発コストの実現可能性（完全無料の制約について）

★「完全無料で開発する」という前提について、開発ツール・ソフトウェアの範囲では実現可能だが、**アプリストア公開には無料で回避できない費用が存在する**ため、ここで明確にしておく。

### 21.1 無料にできる部分
- 開発環境：GitHub Codespaces（無料アカウントでも月60時間の無料枠あり）、Flutter SDK、VS Code拡張機能はすべて無料。
- ライブラリ：本設計書で選定したもの（riverpod, drift, go_router, flutter_local_notifications, just_audio等）はすべてOSS・無料。
- CI：GitHub Actionsは無料アカウントでも月2,000分の無料枠あり（**ただしUbuntuランナーのみ**。macOSランナーは消化速度が10倍で、無料枠をすぐに使い切るため、iOS向けCIビルドは当面組み込まない）。
- 音源：既存曲・ストリーミング音源のアラーム利用は不可（第4章の通り）なので、自作またはCC0（著作権フリー）素材のみを使用し、ライセンス費用は発生させない。
- バックエンド（Ver1.1以降）：Firebase / Supabaseはいずれも無料枠があり、MVP規模のユーザー数であれば当面無料枠内で運用可能。

### 21.2 無料にできない部分（要判断）
| 費用 | 金額 | 回避可能か |
|---|---|---|
| Apple Developer Program | 年間$99 | iOS実機の恒久的なデバッグ・App Store公開には必須。回避するとApple無料枠（7日ごとの再署名が必要な開発用プロビジョニング）での検証のみ可能 |
| Google Play Developer登録 | 初回$25（買い切り） | Google Playでの公開には必須 |

### 21.3 採用する方針
**Android先行リリース戦略**を採用する。
1. 開発フェーズはCodespaces無料枠＋OSSライブラリのみで完全無料で進める。
2. まずAndroid版のみ完成させ、Google Play登録費（$25）のみを最小費用として公開する。
3. iOS対応は、Android版での収益・ユーザー反応を見た上でApple Developer Program（$99/年）への投資判断を行う。それまではiOS向けの実機検証は無料のローカル署名（7日期限）の範囲に留める。
4. これに伴い、第18章の開発ロードマップの実行順序を「MVP＝Androidのみ」に修正し、iOS対応をVer1.1以降のタスクとして再配置する。

---

## 国内トップクラスを目指す上で、現時点で不足している要素（優先順位順・厳しめレビュー）

1. **iOS版の信頼性における根本的な限界の未解決**：Critical Alertsが通過しない前提である以上、iOSでは「音量0・サイレントモードでは鳴らない」という致命的な弱点が残る。これは競合の目覚まし専用アプリも同様に抱える業界共通の限界だが、「確実に起きられる」という価値提案の根幹に関わるため、申請可否を早期に確認し、通らない場合の代替訴求（Androidでの完成度を売りにする等）をマーケティング上決めておく必要がある。
2. **単元別ジェネレーターの実装工数が過小評価されがち**：構造的厳密一致判定＋専用ボタンという設計は独自性が高い分、各単元ごとに「バリデータ」「難易度推定」まで含めて作り込む工数は相当大きい。MVPで本当にどこまでの単元数を作り切れるか、開発リソースとの現実的なすり合わせが必要。
3. **同値な構造の扱い（√8 = 2√2等）がMVP対象外のままだと、ユーザー体験を損なうリスクがある**：出題側が必ず正規化された形で出す設計に依存しているため、生成ロジックのバグが即座に「正しい答えなのに不正解になる」という致命的なユーザー体験毀損に直結する。ここのテスト網羅性は最優先で厚くすべき。
4. **競合（Alarmy等）との認知獲得競争**：目覚ましジャンルは既に強い競合が存在するレッドオーシャン。「受験数学特化」というニッチの訴求だけでApp Store/Google Playの検索最適化・口コミ獲得をどう勝ち取るか、マーケティング戦略が本設計書には含まれていない。
5. **統計・分析機能の受験生への実利用価値の検証不足**：「起床成功率」等の指標が本当に受験結果の改善に結びつくかは未検証。差別化要素として掲げるなら、初期ユーザーからのフィードバックで効果を裏付ける計画（β版でのヒアリング等）が必要。
6. **保護者・学校関係者への訴求チャネルの欠如**：ターゲットに中学生を含む以上、実際のダウンロード動線は保護者経由・学校/塾経由になりやすいが、本設計にはそうした周辺ステークホルダーへの配慮（安全性のアピール、広告非表示前提の説明等）が組み込まれていない。
