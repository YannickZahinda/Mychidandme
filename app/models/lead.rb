class Lead < ApplicationRecord
    validates :name, :email, :device, :country, presence: true
end
