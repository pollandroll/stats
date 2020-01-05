class Uda5 < ApplicationRecord
  has_many :individuals

  validates :label, presence: true, uniqueness: { case_sensitive: false }
end
