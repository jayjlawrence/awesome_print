module AwesomePrint
  class << self
    def color_chart
      String::AP_HTML_COLOR.keys.map do |color|
        String::AP_HTML_COLOR[color].map do |code|
          %Q(<div style="background: \##{code}">#{color} \##{code}</div>)
        end.join
      end.join("<br/>\n")
    end
  end
end
