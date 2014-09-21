module ApplicationHelper
  def markdown(text)
    RedcarpetCompat.new(text).to_html.html_safe
  end

  def short_datetime_format(datetime)
    I18n.l(datetime, :format => :short)
  end
end
