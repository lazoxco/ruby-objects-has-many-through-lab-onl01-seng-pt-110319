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
  
  def new_appointment(date, doctor)
    appointment = Appointment.new(date, doctor, self)
  end 
  
  def appointments
    Appointment.all.select { |appointment| appointment.patient == self}
  end
  
end 