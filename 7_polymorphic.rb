# With polymorphic associations, a model can belong to more than one other model, on a single association.

# pictures table has both `imageable_id`, and `imageable_type`
class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end

class Employee < ApplicationRecord
  has_many :pictures, as: :imageable
end

class Product < ApplicationRecord
  has_many :pictures, as: :imageable
end