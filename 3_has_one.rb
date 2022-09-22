class Supplier < ApplicationRecord

    has_one :account

    # only contains one instance of another model
    # Supplier will only ever have a single account in this example
    # Account associate via 'supplier_id'
end