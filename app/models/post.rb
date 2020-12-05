class Post < ApplicationRecord

    validates :title, :status, :body, :author_id, presence: true
    validates :status, inclusion: { in: %w(introduced passed-house passed-senate enacted),
        message: "%{value} is not a valid status option"}

    belongs_to :author,
        foreign_key: :author_id,
        class_name: :Legislator

    # has_many :comments,
    #     primary_key: :id,
    #     foreign_key: :post_id,
    #     class_name: :Comment

end
