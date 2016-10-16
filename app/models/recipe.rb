class Recipe < ActiveRecord::Base

	validates :title, presence: true, uniqueness:true
	validates :body, presence: true, length: {minimum: 20}

	has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

end
