class Audit < ApplicationRecord


  has_many :teams, dependent: :nullify
  has_many :teamers, through: :teams, source: :user
  
  has_one :rat_reports, dependent: :destroy

  belongs_to :company

end

