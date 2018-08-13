class Audit < ApplicationRecord

  has_one :rat_report

  has_many :teams, dependent: :nullify
  has_many :teamers, through: :teams, source: :user
  
  belongs_to :company

end

