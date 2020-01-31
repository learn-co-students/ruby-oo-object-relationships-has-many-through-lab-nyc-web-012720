class Doctor
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def name
		@name
	end

	def name=(name)
		@name=name
	end

	def self.all
		@@all
	end

	def appointments
		return Appointment.all.select{|e| e.doctor== self }
	end

	def new_appointment(patient, date)
		Appointment.new(date, patient, self)
	end

	def patients
		result = []
		temp = Appointment.all.select{|e| e.doctor== self }
		temp.each{|e| result << e.patient}
		return result.uniq
	end


end
