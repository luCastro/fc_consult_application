class Company < ApplicationRecord

    has_many :audit, dependent: :destroy
    has_many :site, dependent: :destroy

    validates(
            :name, 
            presence: true 
            # uniqueness: {
            #     message: "This company name already exist"
            # }
    )

    
    
    # def full_address
    #     address + " " + neighborhood + "" + city + " " + zip_code
    # end

end

