class DemoController < ApplicationController
  layout false #surpress the layout

  def index #action
    # render 'hello' #=> render (template: 'demo/hello') or render 'demo/hello'
    
  end

  def hello
    # render 'index'
  end

  def other_hello
    redirect_to(controller: :demo, action: :index)
  end

end
