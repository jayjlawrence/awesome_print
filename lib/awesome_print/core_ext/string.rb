# Copyright (c) 2010-2016 Michael Dvorkin and contributors
#
# Awesome Print is freely distributable under the terms of MIT license.
# See LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
class String
  #
  # ANSI color codes:
  #   \e => escape
  #   30 => color base
  #    2 => faint
  #    1 => bright
  #    0 => normal
  #
  # For HTML coloring we use <kbd> tag instead of <span> to require monospace
  # font. Note that beloved <tt> has been removed from HTML5.
  # https://tailwindcss.com/docs/colors/ usually darker, dark and darkest
  # [regular, bright, dark]
  AP_HTML_COLOR = {
      'gray' => ['606F7B', '8795A1', '3D4852'],
      'red' => ['CC1F1A', 'EF5753', '621B18'],
      'green' => ['1A4731', '1F9D55', '0F2F21'],
      'yellow' => ['F2D024', 'FFF382', '684F1D'],
      'blue' => ['2F365F', '5661B3', '191E38'],  # indigo
      'purple' => ['382B5F', '794ACF', '21183C'],
      'cyan' => ['3490DC', '6CB2EB', '2779BD'], # blue
      'white' => ['DAE1E7', 'F8FAFC', 'B8C2CC'], # Grey light, lighter, and base
  }
  AP_METHOD_PREFIX = '_ap_'

  AP_HTML_COLOR.keys.each_with_index do |color, color_index|

    [ AP_METHOD_PREFIX+color, AP_METHOD_PREFIX+color+'!', AP_METHOD_PREFIX+color+'ish'].each_with_index do |method, variant|
      ansi_color=30+color_index # 30, 31, 32, etc
      ansi_effect=variant # 0, 1, 2 from index

      html_color='#'+AP_HTML_COLOR[color][variant]

      define_method method do |*html|
        html[0] ? %Q|<kbd style="color:#{html_color}">#{self}</kbd>| : "\e[#{ansi_color};#{ansi_effect}m#{self}\e[0m"
      end
    end
  end

  alias_method(AP_METHOD_PREFIX+'grey', AP_METHOD_PREFIX+'gray')
  alias_method(AP_METHOD_PREFIX+'grey!', AP_METHOD_PREFIX+'gray!')
  alias_method(AP_METHOD_PREFIX+'greyish', AP_METHOD_PREFIX+'grayish')

  alias_method(AP_METHOD_PREFIX+'black', AP_METHOD_PREFIX+'grayish')
  alias_method(AP_METHOD_PREFIX+'pale', AP_METHOD_PREFIX+'gray!')

end
