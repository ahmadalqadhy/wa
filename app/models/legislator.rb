class Legislator < ApplicationRecord

    validates :name, :party, :chamber, presence: true
    validates :name, uniqueness: true
    validates :party, inclusion: { in: %w(democrat republican independent),
        message: "%{value} is not a valid party option"}
    validates :chamber, inclusion: { in: %w(house senate),
        message: "%{value} is not a valid chamber option"}

    after_initialize :ensure_session_token

    has_many :posts,
        foreign_key: :author_id,
        class_name: :Post

    def self.find_by_credentials(name)
        user = Legislator.find_by(name: name)
        return user
    end

    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= SecureRandom.urlsafe_base64
    end

end
