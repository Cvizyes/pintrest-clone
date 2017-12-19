class Pin < ApplicationRecord
	belongs_to :user

	has_attached_file :images, styles: {medium: "300*300>"}
	validates_attachment_content_type :images, content_type: /\Aimage\/.*\z/
end
