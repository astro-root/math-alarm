# タスク: 問題生成エンジン(採点器 + 代表単元ジェネレーター)の実装

docs/requirements.md、docs/design.md(第2.2章・第6章・第7.1章)、AGENTS.mdのルールに従って、
問題生成エンジンの中核部分を実装してください。今回は全単元ではなく、
設計の異なるパターンを代表する以下4単元のみを実装対象とします。

## 対象単元(代表4パターン)
1. 中学:一次方程式 → 正解は常に `{type: "number", value: ...}`
2. 中学:円の面積・円周 → 正解は `{type: "constant_multiple", constant: "pi", coeff: ...}`
3. 数I:二次方程式 → 判別式次第で `{type: "number"}` または `{type: "sqrt"}` になる分岐パターン
4. 数I:三角比 → 正解は `{type: "trig", func, angle, unit}`(有名角のみ)

## 実装対象

### 1. AnswerStructure (lib/features/problem_generator/domain/)
docs/design.md 第7.1章のtypescript定義に相当するDartのsealed class(freezed推奨、
使えない場合は手書きsealed classでも可)。以下のバリアントを含む:
- NumberAnswer(value: double)
- FractionAnswer(numerator: int, denominator: int)
- SqrtAnswer(arg: int)
- TrigAnswer(func: sin|cos|tan, angle: num, unit: deg|rad)
- LogAnswer(base: num|"e", arg: num)
- ConstantMultipleAnswer(constant: pi|e, coeff: num)

### 2. 採点器 Judge (lib/features/problem_generator/judge/)
- ユーザーの回答入力(同じAnswerStructure型で表現される)と正解を比較し、
  **型と値が完全に一致する場合のみ正解**とする。
- NumberAnswer同士の比較のみ、浮動小数点誤差吸収の極小epsilon(例: 1e-9)を許容する。
- それ以外の型(Sqrt/Trig/Log/ConstantMultiple/Fraction)は、数値的な近さではなく
  **構造そのもの(型+パラメータ)の一致**で判定する。
- 異なる型同士の比較は常に不正解(例: SqrtAnswer(2)とNumberAnswer(1.41421356)は不正解)。

### 3. 単元別ジェネレーター(lib/features/problem_generator/generators/)
上記4単元それぞれに対し、
- 乱数シードを外部から注入可能なコンストラクタ
- 問題文(questionText)と正解(AnswerStructure)を生成するメソッド
- 二次方程式ジェネレーターは、判別式が完全平方数になる係数と、ならない係数(√構造になる)の
  両方を出題しうる設計にすること

### 4. バリデータ(lib/features/problem_generator/validator/)
- ゼロ除算・定義域外(例: 三角比で存在しない角度)を検出し、不正な場合は再生成を促す
  インターフェースのみでよい(呼び出し側の再試行ロジックは今回は簡易実装で可)。

### 5. テスト(test/unit/problem_generator/)
必須で含めること:
- Judgeのテスト:「SqrtAnswer(2)に対しNumberAnswer(1.41421356)を入力しても不正解になる」ことを
  明示的に検証するテストケース(AGENTS.mdのテスト方針で必須とされている項目)
- 各ジェネレーターについて、同じseedを与えると同じ問題が生成されることを検証するテスト
- 二次方程式ジェネレーターについて、判別式が完全平方数になるケースとならないケースの両方を
  生成できることを検証するテスト
- Judgeの型不一致(異なるAnswerStructure型同士)は常に不正解になることのテスト

## 制約・進め方
- 前回同様、コミットは小さく分割すること(例:「AnswerStructure定義」「Judge実装」「ジェネレーター4種」
  「バリデータ」「テスト」)
- flutter SDKがこの環境にない場合、コード自体は作成し、CIでの検証に委ねてよい。ただし
  可能な範囲で `dart analyze` 相当の静的チェックがあれば実行し、結果を報告すること。
- 完了後、実装したファイル一覧、コミット一覧、テストの実行結果(可能なら)を報告してください。
