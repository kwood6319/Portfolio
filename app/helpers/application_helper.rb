module ApplicationHelper
  def asset_exists?(path)
    if Rails.application.assets
      Rails.application.assets.find_asset(path).present?
    else
      Rails.application.assets_manifest.assets[path].present?
    end
  end
end
