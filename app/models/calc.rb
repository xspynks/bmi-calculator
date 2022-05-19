class Calc < ApplicationRecord
  after_commit :send_calc_result, on: [ :create ]
  
  def send_calc_result
    broadcast_append_to("calcs", target: "calc_result", partial: "calcs/show")
    # broadcast_update_to('inbox_list', target: 'inbox_count', html: Inbox.count)
  end

  after_create_commit -> { broadcast_append_to "calcs", target: "calc_stream" }

end
