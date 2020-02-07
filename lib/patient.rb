class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments 
        Appointment.all.select do |appt|
           appt.patient == self
        end
    end

    def doctors
        self.appointments.map do |doc|
            doc.doctor
        end
    end

    def self.all 
        @@all 
    end
end