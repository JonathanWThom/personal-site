module ApplicationHelper
  FORMAT = AutoHtml::Pipeline.new(
      AutoHtml::Markdown.new,
      AutoHtml::Link.new,
      AutoHtml::SimpleFormat.new
    )

  def navigation_class
    unless params[:controller] == "home"
      "inline-nav"
    end
  end
end
