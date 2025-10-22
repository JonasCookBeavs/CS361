# To add a keyboard, I would assign two keys to be the far left and right x axes, and two keys to be the far top and bottom
# y axes, keeping it wrapped in another class. Another key would be assigned the fire lasers button.

# The original author of the code was short-sighted in that they only thought about the code working with one specific kind of controller,
# when in reality many controllers should be able to be used for games. It also relied on the original API not changing, and if it did
# the author would've had to fix the code to work with the updated API.

# You can't modify this code

class SidewinderJoystick
  BUTTON_UP = 2
  BUTTON_DOWN = 3

  def get_x_axis(stick_id) # returns -1.0 to 1.0
  def get_y_axis(stick_id) # returns -1.0 to 1.0
  def button(button_id)  # Returns BUTTON_UP or BUTTON_DOWN
end

# You can't modify this code

class XboxGamepad
  def get_x_axis(stick_id) # returns -128 to 127
  def get_y_axis(stick_id) # returns -128 to 127
  def button_status(button_id)  # float from 0.0 (up) to 1.0 (down)
end

class WrappedSidewinderJoystick

  def x(stick_id)
    SideWinderJoystick.get_x_axis(stick_id)
  end

  def y(stick_id)
    SideWinderJoystick.get_y_axis(stick_id)
  end

  def lasers_fired?
    if SideWinderJoystick.button(4) == BUTTON_DOWN
      true
    else
      false
    end

end

class WrappedXboxGamepad

  def x(stick_id)
    XboxGamepad.get_x_axis(stick_id) / 128
  end

  def y(stick_id)
    XboxGamepad.get_y_axis(stick_id) / 128
  end

  def lasers_fired?
    if XboxGamepad.button_status(4) == 1.0
      true
    else
      false
    end
  end

end


class Player
  def initialize(joystick)
    @x = 0
    @y = 0
    @joystick = joystick
  end

  def update()   # called every game frame
    @x += joystick.x(1)
    @y += joystick.y(1)

    if joystick.lasers_fired?
      self.fire_lasers()
    end

    self.update_graphics()
  end

  # ...

end

if config.joystick == SIDEWINDER
  joystick = WrappedSidewinderJoystick.new
elsif config.joystick == XBOX
  joystick = WrappedXboxController.new
end

p = Player.new(joystick)

# ... Game code continues ...