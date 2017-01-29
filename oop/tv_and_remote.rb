# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)



class Remote
  def initialize(tv_number)
    @tv = tv_number[:tv]
  end
  def toggle_power
    if power == "ON"
      @power = "OFF"
    else
     @power = "ON"
    end
  end

  def increment_volume
    @volume += 1
  end

  def decrement_volume
    @volume -= 1
  end

  def set_channel(var)
    @channel = var
  end

end

class Tv < Remote
attr_accessor :power, :volume, :channel

def initialize(tv_info) 
    @power = tv_info[:power]
    @volume = tv_info[:volume]
    @channel = tv_info[:channel]
end

end

tv = Tv.new({power:"OFF", volume:25, channel:2})
remote = Remote.new(tv:[tv])

action1 = tv.toggle_power

if action1 == "ON"
  puts "PASS: The TV is ON"
else
  puts "F"
end

action2 = tv.set_channel(5)

if action2 == 5
  puts "PASS: Switched to channel 5"
else
  puts "F"
end

action3 = 0

5.times do
action3 = tv.increment_volume
end

if action3 == 30
  puts "PASS: Volume set to 30"
else
  puts "F"
end

action4 = tv.toggle_power

if action4 == "OFF"
  puts "PASS: You turned the tv off"
else
  puts "F"
end