class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(doctor, date)
    # appointment = Appointment.new(self, date, doctor)
    # @appointments << appointment
    
    Appointment.new(self, date, doctor)
  end 
  
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end
  
end 