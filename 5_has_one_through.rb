# sets up a one-to-one connection with another model but can proceed through a third model

class Supplier < ApplicationRecord
    has_one :account
    has_one :account_history, through: :account
end



# suppliers reference 'supplier_id'

class Account < ApplicationRecord
    belongs_to :supplier
    has_one :account_history
end


# account_history referenced by 'account_id'

class AccountHistory < ApplicationRecord
    belongs_to :account
end