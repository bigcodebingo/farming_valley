class Land < ApplicationRecord
    has_many :workers, foreign_key: :landid, dependent: :destroy
    validates :landid, presence: true
  end
  