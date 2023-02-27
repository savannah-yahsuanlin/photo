class Pic < ApplicationRecord
	belongs_to :user

	has_attached_file :avatar, styles: { medium: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
