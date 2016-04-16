module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    if current_user?(user)
      image_tag(gravatar_url, class: "gravatar", href: "https://en.gravatar.com/site/login", id: "change-Gravatar", target: "_blank")
    else
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
  end
end