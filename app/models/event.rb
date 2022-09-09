class Event < ActiveRecord::Base
    belongs_to :user

    # validates :title, :image_url, :event_description, presence: true
end