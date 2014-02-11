module ApplicationHelper
  def render_analytics
    return unless Rails.env.production?
    render 'analytics'
  end
end
