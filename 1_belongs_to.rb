class Book < Application
    belong_to :author

    # must be singular
    # sets up a 1:1 connection with another model - Author in this case
    # Books associated to another via 'another_id' on books table
end