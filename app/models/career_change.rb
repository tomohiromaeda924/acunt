class CareerChange < ApplicationRecord
    validates :syokusyu, presence: true
    validates :nennsyuu, presence: true
    validates :kinnmuti, presence: true
    validates :kinnmuzikann, presence: true
    validates :kyuuzitu, presence: true
    validates :zanngyou, presence: true
    validates :user_id, presence: true
    
end
