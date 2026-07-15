# タスク: アラーム機能(スケジューリング・鳴動・停止フロー)の実装

docs/requirements.md(第1章)、docs/design.md(第6章・第9章・第10.4章)、AGENTS.mdのルールに従って、
アラーム機能を実装してください。今回のスコープはAndroidのみとします(design.md 21.3節の
Android先行リリース方針に従う)。iOS向け実装は行わないでください。

## 実装対象

### 1. AlarmConfig (lib/features/alarm/domain/)
docs/design.md 第7.3章の型定義に相当するDartのモデルクラス。
- id, time, repeatDays, problemCount, units(unitId+ratio), difficulty,
  timeLimitSeconds, rescueModeEnabled, soundFile, enabled

### 2. アラームのリポジトリ (lib/features/alarm/data/)
既存のDrift `Alarms`/`AlarmUnits`テーブル(lib/core/database/app_database.dart)を使い、
AlarmConfigとの相互変換・CRUD操作を行うリポジトリを実装してください。

### 3. スケジューリング (lib/features/alarm/data/ or lib/core/)
- Androidの `AlarmManager`(`setExactAndAllowWhileIdle`相当)でアラームを予約する仕組み。
  現時点でネイティブプラグイン(android_alarm_manager_plus等)が未導入なら追加してください。
- 端末再起動後の再登録: `BOOT_COMPLETED`を受け取り、有効なアラームを再スケジュールする
  仕組みの実装(Androidのネイティブ側の変更が必要な場合はplatform/android/配下に追加)。

### 4. 状態管理 (lib/features/alarm/application/)
Riverpod Notifierで、アラーム一覧の取得・作成・編集・有効/無効切り替えを扱う。

### 5. 画面 (lib/features/alarm/presentation/)
最小限でよい:
- アラーム一覧画面(ホーム画面のルートに接続。既存の仮ホーム画面を置き換える)
- アラーム作成/編集画面(時刻・曜日・問題数・難易度の入力。単元選択は簡易な仮UIでよい、
  詳細な単元ドリルダウンUIは次タスクで作る)
- アラーム鳴動画面(ロック画面上でも表示させるためのフルスクリーン設計。今回は
  「鳴動→問題1問表示→正解で停止」という最小限のフローが動けばよく、救済モードや
  複数問題の連続出題は次タスクでよい)

### 6. 問題生成エンジンとの接続
鳴動時、lib/features/problem_generator/ の代表4単元ジェネレーターのいずれかを使って
1問出題し、Judgeで採点する最小フローを実装してください。

## 制約・進め方
- AGENTS.mdの4層構成(domain/data/application/presentation)を守ること。
- 前回同様、コミットは小さく分割すること
  (例:「AlarmConfigとリポジトリ」「スケジューリング基盤」「Riverpod状態管理」
  「一覧・作成画面」「鳴動画面と問題生成エンジンの接続」)。
- 今回のスコープにスヌーズ機能は含めない(コンセプト上not-supported)。
- テスト: リポジトリのCRUD、Notifierの状態遷移について最低限のユニットテストを追加すること。
  ネイティブAlarmManager呼び出し自体のテストは困難なため、呼び出しをラップする
  インターフェースを用意しモック可能にすること。
- 完了後、実装したファイル一覧、コミット一覧、`flutter analyze`/`flutter test`の実行結果を
  報告してください(この環境にはFlutter SDKがあるため、実際に実行して結果を報告してください)。
