module ApplicationHelper
  def view_sign_in
    if user_signed_in?
      "<p> #{current_user.name } |
       #{link_to 'Sign Out', destroy_user_session_path} </p>".html_safe
    else
      "<p>
        #{link_to 'Sign in', new_user_session_path}
        </p>".html_safe
    end
  end
end
