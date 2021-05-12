require 'clip'

App.end_time = 15

font = Font.new(50)
font_s = Font.new(30)

script do |c|
  Drawer.background("black")
end

script do |c|
  t = c.text(font, 60, 120, color: "orange")

  # シーン1
  t.text = "🎃かぼちゃの煮物🎃"

  # シーン2
  c.until_time 3
  t.x = t.y = 10
  t.text = "かぼちゃ 1/4\n"
  c.wait 0.8
  t.text += "砂糖 大さじ1\n"
  c.wait 0.8
  t.text += "醤油 大さじ1\n"
  c.wait 0.8

  # シーン3
  c.until_time 7
  t.font = font_s
  t.text = "1. かぼちゃ入れて水の高さは1.5cm位\n"
  c.wait 2
  t.text += "2. 砂糖入れて蓋して中火で蒸し煮\n"
  c.wait 2
  t.text += "3. 醤油入れて鍋を回して煮汁を絡ませる\n"
  c.wait 2
end

App.run