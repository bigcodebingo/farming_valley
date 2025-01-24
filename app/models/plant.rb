class Plant < ApplicationRecord
    belongs_to :worker, foreign_key: :workerid
    validates :plantid, presence: true, uniqueness: true
  end
  