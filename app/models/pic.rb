class Pic < ApplicationRecord
	acts_as_votable

	belongs_to :user

	has_attached_file :avatar, styles: { medium: "300x300>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
