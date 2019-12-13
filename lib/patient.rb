class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(self, date, doctor)
    @appointments << appointment
    appointment.patient = self
  end 
  
  def appointments
    @appointments
  end
  
end 