class Routine < ApplicationRecord
    has_many :routine_missions
    has_many: :missions, through: :routine_missions
end
