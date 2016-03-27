class Task < ActiveRecord::Base
  # 単一のprojectに紐づくモデル
  belongs_to :project
  # バリデーション
  validates :title,
    presence: { message: "タイトルは必須項目です" }
  # unfinishedスコープを定義
  scope :unfinished, -> { where(done: false) }
end
