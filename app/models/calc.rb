class Calc < ApplicationRecord

  after_create_commit -> { broadcast_prepend_to "calcs", partial: "calcs/calc", locals: { calc: self }, target: "calc_stream" }

end
