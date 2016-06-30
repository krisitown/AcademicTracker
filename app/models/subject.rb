class Subject < ActiveRecord::Base
    belongs_to :user
    has_many :grades
    validates :name, presence: true, length: { minimum: 2 }
    validates :user_id, presence: true
end
