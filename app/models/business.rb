class Business < ApplicationRecord
 belongs_to :user


 def to_param
    "#{id}-#{first_name} #{last_name}}".parameterize
  end

end
