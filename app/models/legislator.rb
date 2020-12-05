class Legislator < ApplicationRecord

    validates :name, :party, :chamber, presence: true
    validates :name, uniqueness: true
    validates :party, inclusion: { in: %w(democrat republican independent),
        message: "%{value} is not a valid party option"}
    validates :chamber, inclusion: { in: %w(house senate),
        message: "%{value} is not a valid chamber option"}

    has_many :posts,
        foreign_key: :author_id,
        class_name: :Post

    # has_many :comments,
    #     primary_key: :id,
    #     foreign_key: :author_id,
    #     class_name: :Comment 

end
