module ApplicationHelper
  def render_analytics
    return unless Rails.env.production? and Rails.application.secrets.google_analytics_id.present?
    render 'analytics'
  end
end
