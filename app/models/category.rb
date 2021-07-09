class Category < ApplicationRecord
    has_many :tasks

    before_create :slugify
    def slugify
        self.slug = name.parameterize
    end
end
