# frozen_string_literal: true

class Docs::DatePickerView < ApplicationView
  def view_template
    div(class: "max-w-2xl mx-auto w-full py-10 space-y-10") do
      render Docs::Header.new(title: "Date Picker", description: "A date picker component with input.")

      TypographyH2 { "Usage" }

      render Docs::VisualCodeExample.new(title: "Single Date", context: self) do
        <<~RUBY
          div(class: 'space-y-4 w-[260px]') do
            Popover(options: { trigger: 'focusin' }) do
              PopoverTrigger(class: 'w-full') do
                div(class: 'grid w-full max-w-sm items-center gap-1.5') do
                  label(for: "date") { "Select a date" }
                  Input(type: 'string', placeholder: "Select a date", class: 'rounded-md border shadow', id: 'date', data_controller: 'input')
                end
              end
              PopoverContent do
                Calendar(input_id: '#date')
              end
            end
          end
        RUBY
      end

      render Docs::ComponentsTable.new(components)
    end
  end

  private

  def components
    [
      Docs::ComponentStruct.new(name: "CalendarController", source: "https://github.com/PhlexUI/phlex_ui_stimulus_pro/blob/main/controllers/calendar_controller.js", built_using: :stimulus),
      Docs::ComponentStruct.new(name: "PopoverController", source: "https://github.com/PhlexUI/phlex_ui_stimulus/blob/main/controllers/popover_controller.js", built_using: :stimulus),
      Docs::ComponentStruct.new(name: "Calendar", source: "https://github.com/PhlexUI/phlex_ui_pro/blob/main/lib/phlex_ui_pro/calendar.rb", built_using: :phlex),
      Docs::ComponentStruct.new(name: "CalendarBody", source: "https://github.com/PhlexUI/phlex_ui_pro/blob/main/lib/phlex_ui_pro/calendar/body.rb", built_using: :phlex),
      Docs::ComponentStruct.new(name: "CalendarDays", source: "https://github.com/PhlexUI/phlex_ui_pro/blob/main/lib/phlex_ui_pro/calendar/days.rb", built_using: :phlex),
      Docs::ComponentStruct.new(name: "CalendarHeader", source: "https://github.com/PhlexUI/phlex_ui_pro/blob/main/lib/phlex_ui_pro/calendar/header.rb", built_using: :phlex),
      Docs::ComponentStruct.new(name: "CalendarNext", source: "https://github.com/PhlexUI/phlex_ui_pro/blob/main/lib/phlex_ui_pro/calendar/next.rb", built_using: :phlex),
      Docs::ComponentStruct.new(name: "CalendarPrev", source: "https://github.com/PhlexUI/phlex_ui_pro/blob/main/lib/phlex_ui_pro/calendar/prev.rb", built_using: :phlex),
      Docs::ComponentStruct.new(name: "CalendarTitle", source: "https://github.com/PhlexUI/phlex_ui_pro/blob/main/lib/phlex_ui_pro/calendar/title.rb", built_using: :phlex),
      Docs::ComponentStruct.new(name: "CalendarWeekdays", source: "https://github.com/PhlexUI/phlex_ui_pro/blob/main/lib/phlex_ui_pro/calendar/weekdays.rb", built_using: :phlex),
      Docs::ComponentStruct.new(name: "Popover", source: "https://github.com/PhlexUI/phlex_ui/blob/main/lib/phlex_ui/popover.rb", built_using: :phlex),
      Docs::ComponentStruct.new(name: "PopoverTrigger", source: "https://github.com/PhlexUI/phlex_ui/blob/main/lib/phlex_ui/popover/trigger.rb", built_using: :phlex),
      Docs::ComponentStruct.new(name: "PopoverContent", source: "https://github.com/PhlexUI/phlex_ui/blob/main/lib/phlex_ui/popover/content.rb", built_using: :phlex)
    ]
  end
end
