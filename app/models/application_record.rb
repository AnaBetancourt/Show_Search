class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def date_readable(date)
    date.strftime("%B %d, %Y")
  end
  
end
