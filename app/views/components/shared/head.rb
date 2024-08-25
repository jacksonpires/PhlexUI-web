# frozen_string_literal: true

class Shared::Head < ApplicationComponent
  include Phlex::Rails::Layout

  def view_template
    head do
      title { "RBUI - Component Library" }
      meta name: "viewport", content: "width=device-width,initial-scale=1"
      meta name: "turbo-refresh-method", content: "morph"
      meta name: "turbo-refresh-scroll", content: "preserve"
      meta name: "view-transition", content: "same-origin"
      csp_meta_tag
      csrf_meta_tags
      stylesheet_link_tag "https://api.fontshare.com/v2/css?f[]=general-sans@1&display=swap", data_turbo_track: "reload"
      stylesheet_link_tag "application", data_turbo_track: "reload"
      javascript_include_tag "application", data_turbo_track: "reload", defer: true
    end
  end
end
