class Todo < ActiveRecord::Base
  # 必須バリデーション
  validates_presence_of :due, :task
  belongs_to :user
end
