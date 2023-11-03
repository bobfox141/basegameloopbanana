require 'gosu'

# class GameWindow inherits Gosu::Window
class GameWindow < Gosu::Window
  def initialize width=800, height=600, fullscreen=false
    super
    self.Caption = 'My Window' 
    @message = Gosu::Image.from_text(self, "Hello Steve!!!", Gosu.default_font_name, 30)
  end

  def button_down(button)
    case button
      when Gosu::KbEscape then close
    end
    
  end
  
  def draw
    @message.draw(10,10,0)  
  end
end

window = GameWindow.new
window.show

      