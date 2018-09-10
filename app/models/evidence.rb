class Evidence < ApplicationRecord
  belongs_to :audit
  has_one_attached :doc

  validates :title, presence: true

  validates :doc, presence: true

end
