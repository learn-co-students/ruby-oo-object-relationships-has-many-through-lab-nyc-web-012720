class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
        end
    end 

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end
     
    def patients 
        self.appointments.map do |appt_patient|
           appt_patient.patient
        end
    end

end