module PostsHelper
  def sign(test)
    if user_signed_in?
      test.name
    else
      "User"
    end
  end

  def author(posts)
    user_signed_in? ? posts.title : "Anonymous"
  end

  # def show_author(user = "Anonymous") 
  #   if user_signed_in?
  #     "<p> Author name:
  #         #{ user.name }
  #      </p>".html_safe
  #   else
  #     "<p> Author name:
  #      #{user.name}
  #     </p>".html_safe  
  #   end
  # end
end

