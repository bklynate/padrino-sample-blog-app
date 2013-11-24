class Post < ActiveRecord::Base
  belongs_to :account

  validates :title, presence: true
  validates :body, presence: true

  def author
    "#{account.name} #{account.surname}" if account
  end
end
