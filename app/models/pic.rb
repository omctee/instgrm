class Pic < ApplicationRecord
	belongs_to :user

  has_attached_file :avatar, styles: { medium: "220x220>", thumb: "90x90>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
