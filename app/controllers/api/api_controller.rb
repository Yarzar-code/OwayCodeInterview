class Api::ApiController < ActionController::Base
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate

  protected
  # Authenticate the user with token based authentication
  def authenticate
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    user = User.find_by_api_token(request.headers['Authorization'])
    if(user)
      return user
    else
      return nil
    end
  end

  def render_unauthorized(realm = "Application")
    self.headers["WWW-Authenticate"] = %(Token realm="#{realm.gsub(/"/, "")}")
    render json: 'Bad credentials', status: :unauthorized
  end
end
