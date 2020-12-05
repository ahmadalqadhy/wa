class Constituent < ApplicationRecord

    validates :name, :age, :party, presence: true
    validates :party, inclusion: { in: %w(democrat republican independent),
        message: "%{value} is not a valid party option"}

    # has_many :posts,
    #     foreign_key: :author_id,
    #     class_name: :Post

    # has_many :comments,
    #     primary_key: :id,
    #     foreign_key: :author_id,
    #     class_name: :Comment 

end
