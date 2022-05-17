class Calc < ApplicationRecord

  after_create_commit -> { broadcast_append_to "calcs", partial: "calcs/calc", locals: { calc: self }, target: "calcs" }

end
