class Mission < ApplicationRecord
    has_many: :routine_missions
    has_many: :routines, through: :routine_missions
end
