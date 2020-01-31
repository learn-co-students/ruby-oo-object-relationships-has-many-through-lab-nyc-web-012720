class Appointment

	@@all = []

	def initialize(date, patient = nil, doctor = nil)
		@date = date
		@doctor = doctor
		@patient = patient
		@@all << self
	end

	def date
		@date
	end

	def date=(date)
		@date=date
	end

	def doctor
		@doctor
	end

	def doctor=(doctor)
		@doctor=doctor
	end

	def patient
		@patient
	end

	def patient=(patient)
		@patient=patient
	end

	def self.all
		@@all
	end
	
end
