class Site < ApplicationRecord
    belongs_to :company
    
    belongs_to :audit
end
