class Post < ActiveRecord::Base
  validates :title, :content, :date, :presence => true

  def to_param
    title.gsub(" ", "-")
  end

  def self.find(input)
    # this won't always work, better to use a save slug in the future
    input = input.gsub("-", " ")
    input.to_i == 0 ? find_by(title: input) : super
  end

  scope :non_featured, ->(featured_post) {
    where("id != ?", featured_post.id).reverse_order
  }

end
