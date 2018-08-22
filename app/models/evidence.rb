class Evidence < ApplicationRecord
  belongs_to :audit
  has_one_attached :doc
end
