class Fugitive < ApplicationRecord
  has_many :charges
  has_many :aliases
end
