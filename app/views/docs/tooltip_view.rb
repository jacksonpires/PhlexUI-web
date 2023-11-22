# frozen_string_literal: true

class Docs::TooltipView < ApplicationView
  def template
     div(class: "max-w-2xl mx-auto w-full py-10 space-y-10") do
      div(class: 'space-y-2') do
        render PhlexUI::Typography::H1.new { "Tooltip" }
        render PhlexUI::Typography::P.new { "A popup that displays information related to an element when the element receives keyboard focus or the mouse hovers over it." }
      end

      render Docs::VisualCodeExample.new(title: "Example", context: self) do
        <<~RUBY
          render PhlexUI::Tooltip.new do
            render PhlexUI::Tooltip::Trigger.new do
              render PhlexUI::Button.new(variant: :outline, icon: true) do
                bookmark_icon
              end
            end
            render PhlexUI::Tooltip::Content.new do
              render PhlexUI::Typography::P.new { "Add to library" }
            end
          end
        RUBY
      end

      render Docs::InstallationInstructionsComingSoon.new
    end
  end

  def bookmark_icon
    svg(
      xmlns: "http://www.w3.org/2000/svg",
      fill: "none",
      viewbox: "0 0 24 24",
      stroke_width: "1.5",
      stroke: "currentColor",
      class: "w-4 h-4"
    ) do |s|
      s.path(
        stroke_linecap: "round",
        stroke_linejoin: "round",
        d:
          "M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z"
      )
    end
  end
end
