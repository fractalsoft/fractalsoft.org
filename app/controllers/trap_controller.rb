# Trap controller
class TrapController < ActionController::Base
  def index
    Trap.new.insert(request.ip, request.user_agent)
    render text: ''
  end
end
