require "#{Rails.root}/lib/antibot"

Antibot::Trap.instance.load if defined? Antibot::Trap
