class Company < ApplicationRecord

    validates(
            :name, 
            presence: true, 
            uniqueness: {
                message: "This company name already exist"
            }
    )
end

