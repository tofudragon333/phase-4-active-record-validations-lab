class Post < ApplicationRecord
    validates :title, :content, :summary, :category, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction, Non-Fiction) }
    validate :must_be_clickbaity
    def must_be_clickbaity
        validates :content, inclusion: { in: %w("Won't Believe", "Secret", "Top", "guess")}
    end
end
