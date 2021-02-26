module PostsHelper
  def sign(test)
    if user_signed_in?
      test.name
    else
      "User"
    end
  end
end
