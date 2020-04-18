class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    # DateTime.new(2017, 06, 03, 10, 00, 0) => Sat, 03 Jun 2017 10:00:00 +0000 
    # transform to => January 12, 2016 at 3:00
    def transform_date
        time = self.appointment_datetime
        time.strftime("%B %d, %Y at %k:%M %p")
    end

end
