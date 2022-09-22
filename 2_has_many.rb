class Author < ApplicationRecord
    has_many :books

    # naming is plural
    # indicates a one-to-one association
    # an author can have many book in this example
    # Books associated via 'author_id'
end