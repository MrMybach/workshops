class ReviewDecorator < Draper::Decorator
  delegate_all

  def author  
  	"#{firstname} #{lastname}"
  end

end
