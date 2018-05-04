module ApplicationHelper
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def user_avatar(avatar)
    image_div('avatar avatar-card-artist', avatar)
  end

  def card_photo(photo)
    image_div('card-photo', photo)
  end

  def url_with_protocol(object)
    object.url(secure: request.protocol.include?('https'))
  end

  def image_div(klass, object)
    options = {
      class: klass
    }

    options[:style] = "background-image: url(#{url_with_protocol(object)});" if object.url

    content_tag :div, options do
      yield if block_given?
    end
  end
end
