class Worker < ApplicationRecord
    belongs_to :land, foreign_key: :landid
    has_many :plants, foreign_key: :workerid, dependent: :destroy
    validates :workerid, presence: true, uniqueness: true
  end
  