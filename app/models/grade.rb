class Grade < ActiveRecord::Base
    belongs_to :subject
    validates :value, presence: true
end
