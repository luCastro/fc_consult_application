class Audit < ApplicationRecord
  belongs_to :company
  belongs_to :rat_report
end
