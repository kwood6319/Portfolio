class ApplicationController < ActionController::Base
  before_action :set_locale
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    locale = params[:locale]
    %w[en ja].include?(locale) ? locale : nil
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
