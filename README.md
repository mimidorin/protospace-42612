# ProtoSpace 42612

## 概要
ProtoSpaceは、ユーザーが自分のアイデア（プロトタイプ）を投稿し、他のユーザーからコメントをもらうことができるアプリケーションです。  
アカウント登録を行うことで、プロトタイプの投稿・閲覧・コメントが可能になります。

---

## 使用技術
- Ruby on Rails（バージョン 7.x）
- Ruby（バージョン 3.x）
- MySQL
- GitHub / Render（デプロイ用）
- Active Storage（画像投稿機能）

---

## ER図

### usersテーブル
| Column             | Type   | Options                       |
|--------------------|--------|-------------------------------|
| email              | string | null: false, unique: true     |
| encrypted_password | string | null: false                   |
| name               | string | null: false                   |
| profile            | text   | null: false                   |
| occupation         | text   | null: false                   |
| position           | text   | null: false                   |

### prototypesテーブル
| Column       | Type       | Options                        |
|--------------|------------|--------------------------------|
| title        | string     | null: false                    |
| catch_copy   | text       | null: false                    |
| concept      | text       | null: false                    |
| user         | references | null: false, foreign_key: true |

※imageはActiveStorageで実装

### commentsテーブル
| Column    | Type       | Options                        |
|-----------|------------|--------------------------------|
| content   | text       | null: false                    |
| prototype | references | null: false, foreign_key: true |
| user      | references | null: false, foreign_key: true |

---

## アソシエーション
- User has_many :prototypes  
- User has_many :comments  
- Prototype belongs_to :user  
- Prototype has_many :comments  
- Comment belongs_to :user  
- Comment belongs_to :prototype  

---

## 機能一覧
- ユーザー登録 / ログイン / ログアウト（Devise使用）
- プロトタイプ投稿・編集・削除
- コメント投稿機能
- 画像投稿機能（ActiveStorage）

---

## 実行手順
1. このリポジトリをクローン  
   ```bash
   git clone https://github.com/your-username/protospace-42612.git
