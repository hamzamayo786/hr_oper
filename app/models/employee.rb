class Employee < ApplicationRecord

    has_many :documents 

    validates :f_name , :l_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :age, :contact, :city, :country, :address, presence: true

    def name
        "#{f_name} #{l_name}".strip

    end
    def full_address
        "#{address}, #{city}, #{country}".strip
    end

    def name_with_email
        "#{name}(#{email})"
    end
    

end
