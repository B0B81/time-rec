class Record < ApplicationRecord
  belongs_to :workfile, optional: true
end
