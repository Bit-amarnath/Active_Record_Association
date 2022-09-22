
# sets up a many-to-many association using another model

class Physician < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
end


# the appointments table would have both a 'physician_id' and 'patient_id' column

class Appointment < ApplicationRecord
    belongs_to :physician
    belongs_to :patient
end



class Patient < ApplicationRecord
    has_many :appointments
    has_many :physicians, through: :appointments
end