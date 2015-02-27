class Post < ActiveRecord::Base
  	has_attached_file :image, styles: { larrge: "600x600>", medium: "300x300>", thumb: "150x150#" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  	validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]

	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
	validates :body,  presence: true


	attr_accessible :picture, :verified, :category, :tags, :user_id  
	#added for paperclip-drop gem   
	has_attached_file :picture,
	 :storage => :dropbox,
	:dropbox_credentials => "#{Rails.root}/config/dropbox_c
	onfig.yml",
	 :styles => { :medium => "300x300" , :thumb => "100x100>"},    
	:dropbox_options => {       
	:path => proc { |style| "#{style}/#{id}_#{picture.original_filename}"},       :unique_filename => true 
	  }
 

	validates :picture, :attachment_presence => true 
	validates :tags, :presence =>true     v
	validates :category, :presence => true    
	belongs_to :user  
end
