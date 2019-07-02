class JobOffer < ApplicationRecord
    validates :gyoumu, presence: true
    validates :keiyakukikann, presence: true
    validates :siyoukikann, presence: true
    validates :kinnmuti, presence: true
    validates :kinnmuzikann, presence: true
    validates :kyuukei, presence: true
    validates :kyuuzitu, presence: true
    validates :zikanngai, presence: true
    validates :hokenn, presence: true
    validates :tinnginn, presence: true, length: { maximum: 140 } 
end
