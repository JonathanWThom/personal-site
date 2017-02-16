class Post < ActiveRecord::Base
  validates :title, :content, :date, :presence => true

  # validates_format_of :title, :without => /^\d/

  def to_param
    title
  end

  def self.find(input)
    input.to_i == 0 ? find_by(title: input) : super
  end



  # def self.find_by_param(input)
  #   find_by(title: input)
  # end
end
