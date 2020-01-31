class Patient
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def name
		@name
	end

	def appointments
		return Appointment.all.select{|e| e.patient== self }
	end

	def self.all
		return @@all
	end

	def doctors
		result = []
		temp = Appointment.all.select{|e| e.patient== self }
		temp.each{|e| result << e.doctor}
		return result.uniq
	end


	def new_appointment(doctor, date)
		Appointment.new(date, self, doctor)
	end

end
