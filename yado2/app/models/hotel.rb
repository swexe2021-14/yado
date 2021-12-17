class Hotel < ApplicationRecord
    has_many :reviews
    
    def self.search(keyword)
        where(["hname like? OR comment like? OR sptype like?","%#{keyword}%","%#{keyword}%","%#{keyword}%"])
    end
end