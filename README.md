# gigadown

`gigadown.sh` is a Bash script designed to automate the process of downloading files from Gigafile.nu. It handles session cookies and file retrieval seamlessly.

## Usage

Run the script with the URL of the Gigafile you want to download as an argument:

```bash
./gigadown.sh <gigafile_url>
```

### Example

```bash
./gigadown.sh https://112.gigafile.nu/1234567890abcdef
```

## How It Works

1. The script extracts the file identifier from the provided Gigafile URL.
2. It saves session cookies using `wget`.
3. It downloads the file using the saved cookies and the extracted file identifier.

## Requirements

- `wget` must be installed on your system.

## Notes

- Ensure the URL provided is a valid Gigafile URL.
- The script creates a `cookies.txt` file in the current directory to store session cookies temporarily.

---

# gigadown（日本語）

`gigadown.sh` は、Gigafile.nu からファイルを自動的にダウンロードするための Bash スクリプトです。セッションクッキーの処理やファイル取得を簡単に行えます。

## 使用方法

Gigafile の URL を引数としてスクリプトを実行してください。

```bash
./gigadown.sh <gigafile_url>
```

### 使用例

```bash
./gigadown.sh https://112.gigafile.nu/1234567890abcdef
```

## 動作概要

1. 指定された Gigafile URL からファイル識別子を抽出します。
2. `wget` を使用してセッションクッキーを保存します。
3. 保存したクッキーと抽出したファイル識別子を使用してファイルをダウンロードします。

## 必要条件

- システムに `wget` がインストールされている必要があります。

## 注意事項

- 指定する URL が有効な Gigafile URL であることを確認してください。
- スクリプトはセッションクッキーを一時的に保存するため、現在のディレクトリに `cookies.txt` ファイルを作成します。

