# MySQL Docker Project

このプロジェクトは、Dockerを使用してMySQL環境を構築するための設定を提供します。以下のファイルが含まれています。

## ファイル構成

- **docker-compose.yml**: MySQLサービスの設定を含むDocker Composeの設定ファイルです。データベースのバージョン、環境変数、ボリュームのマウントなどが定義されています。

- **Dockerfile**: MySQLのDockerイメージをビルドするための設定が含まれています。必要なパッケージのインストールや設定ファイルのコピーなどが行われます。

## セットアップ手順

1. このリポジトリをクローンします。
   ```
   git clone https://github.com/e165747/lerning_sql.git
   ```

2. DockerとDocker Composeがインストールされていることを確認します。

3. Docker Composeを使用してMySQLサービスを起動します。
   ```
   docker-compose up -d
   ```

4. MySQLに接続するためのクライアントを使用して、設定したデータベースに接続します。

## 使用方法

- MySQLのデフォルトのユーザー名とパスワードは、`docker-compose.yml`ファイルで設定されています。
- データベースのバックアップや復元は、ボリュームを使用して行うことができます。

このプロジェクトを使用して、簡単にMySQL環境を構築し、開発やテストに利用してください。