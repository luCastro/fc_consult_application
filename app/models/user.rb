class User < ApplicationRecord
    has_secure_password

    has_many :teams, dependent: :nullify
    has_many :teamed_audits, through: :teams, source: :audit

    validates :first_name, :last_name, presence: true

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates(
        :email,
        presence: true,
        uniqueness: true,
        format: VALID_EMAIL_REGEX
      )

end
