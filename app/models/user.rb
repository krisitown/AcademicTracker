class User < ActiveRecord::Base
    has_many :subjects
    validates :name, presence: true, length: { minimum: 4 }
end
