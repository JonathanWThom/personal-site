module ApplicationHelper
  FORMAT = AutoHtml::Pipeline.new(
      AutoHtml::Markdown.new,
      AutoHtml::Link.new
    )
end
