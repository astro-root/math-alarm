# AGENTS.md

このリポジトリでコードを書くAIエージェント(Codex等)向けのルール。
仕様の正本は docs/math-alarm-requirements-v1.md と docs/math-alarm-design-v1.md。
実装判断で仕様と矛盾する場合は、仕様側を優先し、疑問点はコミットせず質問すること。

## プロジェクト概要
「数学を解かなければ止められない目覚まし」受験生向けFlutterアプリ。
Android先行リリース(iOSはVer1.1以降)。開発コストは可能な限り無料枠内。

## 技術スタック
- Flutter (Dart)
- 状態管理: flutter_riverpod
- ルーティング: go_router
- ローカルDB: drift (sqlite3)
- 通知: flutter_local_notifications
- アラーム: android_alarm_manager_plus 等
- 音声: just_audio
- DI: get_it
- テスト: flutter_test, mocktail
- CI: GitHub Actions (Ubuntuランナーのみ。macOSランナーは無料枠消費が大きいため使わない)

## ディレクトリ構成 (Feature-first)

    lib/
      main.dart
      core/
        di/
        router/
        theme/
        utils/
      features/
        alarm/
          domain/
          data/
          application/
          presentation/
        problem_generator/
          domain/
          generators/
          judge/
          validator/
          balancer/
        statistics/
        motivation/
        onboarding/
        settings/
        music_integration/   # Ver1.1以降、MVPでは作らない
      shared_widgets/
    platform/
      android/
      ios/
    test/
      unit/
      widget/
      integration/

## コーディング規約
- 各featureは domain/data/application/presentation の4層を維持し、層をまたぐ直接依存を作らない(例: presentationからdataを直接importしない)。
- 状態管理はRiverpodのNotifierで統一。StatefulWidgetでのローカルstateは、UIのみに閉じた一時的なものに限定する。
- 正解の型は必ず AnswerStructure (docs/math-alarm-design-v1.md 第7.1章のtypescript定義に相当するDartのsealed class/freezed union) を使う。数値の近似判定(epsilon比較)を無理数・分数の正誤判定に使うことは禁止。整数/有限小数(NumberAnswer)の浮動小数点誤差吸収の極小epsilonのみ許容。
- 単元別ジェネレーターは全て乱数シードを外部から注入可能にする(テスト再現性のため)。
- ファイル・クラス命名は lowerCamelCase(変数/関数) / UpperCamelCase(クラス) / snake_case(ファイル名) のDart標準に従う。

## 状態管理方針
- Riverpod Notifierごとに、アラーム状態・問題セッション状態・統計状態を分離する。
- グローバルなsingleton stateを避け、必要な範囲でproviderをスコープする。

## テスト方針
- 単元別ジェネレーターには境界値(ゼロ除算誘発パラメータ、範囲の最小/最大)を含むプロパティベーステストを用意する。
- 採点器(Judge)のテストは「構造が一致する場合のみ正解」を明示的に検証する(数値的に近い近似値を誤って正解としないことを確認するテストを必ず含める)。
- flutter analyze と flutter test がコミット前に通ることを必須とする。

## コミットルール
- 1コミット1目的。土台作り(プロジェクト構成/DI/ルーティング/テーマ)と機能実装(アラーム/問題生成等)は分けてコミットする。
- コミットメッセージは日本語可、先頭に種別を付ける: feat:, fix:, test:, chore:, docs:
- 保守性を優先し、無理に1コミットに大量の変更を詰め込まない。

## やってはいけないこと
- YouTube動画からの音声抽出/ダウンロード機能の実装(規約違反のため不採用。docs/math-alarm-requirements-v1.md 4.1章参照)
- 無理数・循環小数の判定にepsilon近似を使うこと
- iOSのCritical Alerts通過を前提にした設計(通らない前提で設計する)
- macOSランナーを使うCI設定の追加(無料枠を圧迫するため)
