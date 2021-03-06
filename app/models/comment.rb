class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  paginates_per 50

  validates :body, presence: true, uniqueness: {scope: :post_id}
  def user_full_name
    user.full_name if user
  end

  def self.today
    where("created_at >= ?", Time.zone.now.beginning_of_day)
  end
end
