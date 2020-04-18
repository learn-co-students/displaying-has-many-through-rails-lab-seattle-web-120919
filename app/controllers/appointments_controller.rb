class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.find(params[:id])
        @appointment.transform_date
    end
end
