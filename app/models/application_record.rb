class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def date_readable(date)
    date.strftime("%B %d, %Y")
  end

  def capitalize_name(name)
    cap_name = []
    name.split(" ").each do |i|
        cap_name << i.capitalize
    end
    cap_name.join(" ")
  end 
  
end
