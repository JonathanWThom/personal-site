class Post < ActiveRecord::Base
  validates :title, :content, :date, :presence => true
  
  def to_param
    title
  end

  def self.find(input)
    input.to_i == 0 ? find_by(title: input) : super
  end

end
