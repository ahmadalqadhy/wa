class Constituent < ApplicationRecord

    validates :name, :age, :party, presence: true
    validates :party, inclusion: { in: %w(democrat republican independent),
        message: "%{value} is not a valid party option"}

    after_initialize :ensure_session_token

    has_many :comments,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :Comment 

    def self.find_by_credentials(name)
        user = Constituent.find_by(name: name)
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
