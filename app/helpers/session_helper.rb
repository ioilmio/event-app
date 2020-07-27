module SessionHelper
  def login(user_id)
    session[:user_id] = user_id
  end

  def current_user
    if user_id = session[:user_id]
      @current_user ||= User.find_by(id: user_id)
    elsif user_id = cookies.signed[:user_id]
      user = User.find_by(id: user_id)
      login(user)
    end
  end

  def logout(_user_id)
    session.delete(:user_id)
  end
end
