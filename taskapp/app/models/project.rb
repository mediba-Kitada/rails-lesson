class Project < ActiveRecord::Base
  # 複数もtaskを保持出来る
  has_many :tasks

  # バリデーション
  validates :title, 
    ## titleは必須項目とする
    presence: { message: "入力してください" },
	## 文字列の最短数を定義
    length: { minimum: 3, message: "短すぎ!" }
end
