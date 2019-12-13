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
    Appointment.new(self, date, doctor)
  end 
  
  def appointments
    self.Appointmenet.collect { |appointment| appointment.patient }
  end
  
end 