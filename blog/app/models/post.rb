class Post < ActiveRecord::Base
  	has_attached_file :image, styles: { larrge: "600x600>", medium: "300x300>", thumb: "150x150#" }

  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  	validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]

	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
	validates :body,  presence: true

end
