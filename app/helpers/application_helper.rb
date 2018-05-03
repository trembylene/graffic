module ApplicationHelper
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def user_avatar(avatar)
    url = avatar.url(secure: request.protocol.include?('https'))
    content_tag :div, nil, class: "avatar avatar-card-artist", style: "background-image: url(#{url});"
  end
end
