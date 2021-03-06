class Project < ActiveRecord::Base
  has_attached_file :image,
    styles: { medium: "300x300>", thumb: "100x100>" },
    default_url: "/images/:style/missing.png",
    s3_protocol: :https
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  validates :title, :tech, :github, :description, :presence => true
end
