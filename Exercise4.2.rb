#-------------------------------------------------------------
# Exercise 5 Part 1 (Exception Handling)
#-------------------------------------------------------------

class MentalState
  def auditable?
    # true if the external service is online, otherwise false
  end
  def audit!
    unless auditable?
      raise "External service is offline"
    end
  end
  def do_work
    # Amazing stuff...
  end
end

def audit_sanity(bedtime_mental_state)
  begin
    result = bedtime_mental_state.audit!
    if result.ok?
      MorningMentalState.new(:ok)
    else
      MorningMentalState.new(:not_ok)
    end
  rescue => e
    puts "Audit failed: #{e.message}"
    nil
  end
end

new_state = audit_sanity(bedtime_mental_state)

if new_state.nil?
  puts "error"
else
  puts "New state: #{new_state.inspect}"
end

#-------------------------------------------------------------
# Exercise 5 Part 2 (Don't Return Null / Null Object Pattern)
#-------------------------------------------------------------

class BedtimeMentalState < MentalState ; end

class MorningMentalState < MentalState ; end

class NullMorningMentalState < MorningMentalState
  def do_work
    puts "Cant work because audit was not possible."
  end
end

def audit_sanity(bedtime_mental_state)
  return NullMorningMentalState.new unless bedtime_mental_state.auditable?
  if bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  else 
    MorningMentalState.new(:not_ok)
  end
end

new_state = audit_sanity(bedtime_mental_state)
new_state.do_work

#-------------------------------------------------------------
# Exercise 5 Part 3 (Wrapping APIs)
#-------------------------------------------------------------

require 'candy_service'

class WrappedCandyMachine

  def initialize
    @machine = CandyMachine.new
    @machine.prepare
  end

  def ready?
    @machine.ready?
  end

  def make!
    @machine.make!
  end

  def dispense
    if @machine.ready?
      @machine.make!
    else
      puts "sadness"
    end
  end
end

machine = WrappedCandyMachine.new.dispense

