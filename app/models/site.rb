class Site < ApplicationRecord
    belongs_to :company
    
    has_many :audits, dependent: :destroy
end
