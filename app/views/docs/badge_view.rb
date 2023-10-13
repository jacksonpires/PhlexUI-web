# frozen_string_literal: true

class Docs::BadgeView < ApplicationView
  def template
    div(class: "max-w-2xl mx-auto w-full py-10 space-y-8") do
      div(class: 'space-y-2') do
        render Typography::H1.new { "Badge" }
        render Typography::P.new { "Displays a badge or a component that looks like a badge." }
      end

      render Docs::Component.new(title: 'Default') do
        
      end
    end
  end
end
