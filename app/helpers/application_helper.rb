module ApplicationHelper
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def user_avatar(avatar)
    content_tag :div, nil, class: "avatar avatar-card-artist", style: "background-image: url(#{url_with_protocol(avatar)});"
  end

  def card_photo(photo)
    content_tag :div, nil, class: "card-photo", style: "background-image: url(#{url_with_protocol(photo)});"
  end

  def url_with_protocol(object)
    object.url(secure: request.protocol.include?('https'))
  end
end

