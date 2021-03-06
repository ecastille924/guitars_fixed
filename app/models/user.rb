class User < ApplicationRecord
    has_secure_password
    has_many :repair_bills 
    has_many :technicians, through: :repair_bills
    validates :username, :email, uniqueness: true
    validates :username, :email, presence: true

    def self.create_from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(16)    
        end
    end
end
