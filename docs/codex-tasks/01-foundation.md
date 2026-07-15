# タスク: プロジェクト土台構築(MVP機能実装はまだ含めない)

docs/math-alarm-requirements-v1.md と docs/math-alarm-design-v1.md、
そして AGENTS.md のルールに従って、以下の土台のみを構築してください。
機能(アラーム鳴動・問題生成など)の実装はまだ行わないでください。

## やること
1. Flutterプロジェクトの新規作成(プロジェクト名: math_alarm)
2. AGENTS.md記載のディレクトリ構成(lib/core, lib/features/*, lib/shared_widgets, platform/, test/)の作成
   - features配下は空のdomain/data/application/presentationフォルダのみでよい(中身は次タスク以降)
3. 状態管理: flutter_riverpodの導入とProviderScopeのセットアップ
4. ルーティング: go_routerの導入と、ホーム画面(仮の空画面でよい)への最小ルート設定
5. テーマ: ダークモード基調 + 高コントラストな問題画面用テーマの土台(lib/core/theme/)
   - 実際の配色は仮でよいが、テーマ切り替えの仕組み自体は作る
6. ローカルDB: driftの導入と、docs/math-alarm-design-v1.md 第11章のテーブル定義(alarms, alarm_units, cached_problems, wake_up_records)に対応するテーブルクラスの作成
   - 各テーブルにupdated_at, syncedカラムも追加しておくこと(第11章の推奨に従う)
7. 通知機能の基盤: flutter_local_notificationsの導入と初期化コードのみ(実際の通知スケジューリングは次タスク)
8. CI: GitHub Actions設定(.github/workflows/ci.yml)を追加し、Ubuntuランナーで flutter analyze と flutter test を実行する
   - macOSランナーは使わないこと
9. テスト環境: test/unit, test/widget, test/integrationの雛形とサンプルテストを1つずつ配置

## 制約
- 各コミットは小さく分けること(例: 「プロジェクト作成」「Riverpod導入」「go_router導入」「テーマ導入」「drift導入」「通知基盤」「CI設定」「テスト雛形」で分割)
- 保守性を最優先し、AGENTS.mdのルールから逸脱しないこと
- 完了後、変更点のサマリーと flutter analyze / flutter test の実行結果を報告してください
