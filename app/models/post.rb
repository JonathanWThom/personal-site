class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :content, :date, :presence => true

  def self.find(title)
    return friendly.find(title) if title.is_a?(String)

    super
  end

  scope :non_featured, ->(featured_post) {
    where("id != ?", featured_post.id).reverse_order
  }
end
