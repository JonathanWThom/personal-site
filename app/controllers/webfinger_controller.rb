class WebfingerController < ApplicationController
  def show
    render(
      file: "#{Rails.root}/public/webfinger.json",
      content_type: "application/jrd+json",
      layout: false
    )
  end
end
