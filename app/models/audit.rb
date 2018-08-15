class Audit < ApplicationRecord
  belongs_to :company

  has_one :rat_report, dependent: :destroy

  has_many :teams, dependent: :nullify
  has_many :teamers, through: :teams, source: :user
  


end
