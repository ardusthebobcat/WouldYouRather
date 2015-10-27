class Question < ActiveRecord::Base

  has_attached_file :picture_A, styles: { large: "800x800", medium: "300x300>", thumb: "150x150>" }, default_url: "voteA.jpg"
  has_attached_file :picture_B, styles: { large: "800x800", medium: "300x300>", thumb: "150x150>" }, default_url: "voteA.jpg"
  validates_attachment_content_type :picture_A, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :picture_B, content_type: /\Aimage\/.*\Z/

  default_scope { order(id: :desc) }

end
