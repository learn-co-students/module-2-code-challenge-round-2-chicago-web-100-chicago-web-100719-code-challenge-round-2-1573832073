class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, presence: true, numericality: {less_than_or_equal_to: 5}
end
