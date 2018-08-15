class Team < ApplicationRecord
  belongs_to :user
  belongs_to :audit
  

  validates :audit_id, uniqueness: { scope: :user_id }

  
end
