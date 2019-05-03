class Phrase5b < ApplicationRecord
	validates :phrase, presence: true
    validates :phrase, length: { in: 3..6 }      
    validates :phrase, uniqueness: true 
    validates :phrase, format: {with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/}
 
end
