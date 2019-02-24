class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    # binding.pry
    active = self.active ? false : true
    self.update active: active
  end
end
