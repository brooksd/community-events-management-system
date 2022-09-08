class User < ActiveRecord::Base
    has_secure_password
    has_many :events
    # validates :email, uniqueness: true
    # validates :name, :event_description, :email, :password, presence: true
end