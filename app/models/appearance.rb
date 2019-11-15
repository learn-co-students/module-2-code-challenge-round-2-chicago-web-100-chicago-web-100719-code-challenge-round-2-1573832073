class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode


    #Doesn't show error, but if rating over 5, it will not save
    validates :rating, numericality: { less_than_or_equal_to:5,  only_integer: true }


end
