class ReviewDecorator < Draper::Decorator
  delegate_all

  def author  
  	model.user.firstname + " " + model.user.lastname
  end

  def published_at
    object.created_at.strftime("%d %b %Y")
  end

end