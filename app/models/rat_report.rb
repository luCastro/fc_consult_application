class RatReport < ApplicationRecord
    belongs_to :audit


    validates_uniqueness_of :audit_id, message: "can not have more than one audit"
    
end



