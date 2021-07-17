class Category < ApplicationRecord
    has_many :tasks, dependent: :destroy
    validates :name, presence: true
    
    before_create :slugify
    def slugify
        self.slug = name.parameterize
    end
end
