class Workfile < ApplicationRecord
  has_many :records, dependent: :destroy
  accepts_nested_attributes_for :records, allow_destroy: true, reject_if: :all_blank
end
