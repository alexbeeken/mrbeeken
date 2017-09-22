class Email < ApplicationRecord
  validates_uniqueness_of :address
end
