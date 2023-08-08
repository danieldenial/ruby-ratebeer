module RatingAverage
    extend ActiveSupport::Concern

    def average_rating
        return 0.0 if ratings.empty?
        avg = ratings.average(:score).to_f
        avg.round(2)
    end
end