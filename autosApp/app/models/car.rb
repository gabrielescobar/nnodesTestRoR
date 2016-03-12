class Car < ActiveRecord::Base
    after_initialize :init

       def init
         self.lat  ||= rand(-85.00...85.00)           #will set the default value only if it's nil
         self.long ||= rand(-180.00...180.00) #let's you set a default association
       end
end
