require 'clip'

App.end_time = 10

font = Font.new(50)

script do |c|
  t = c.text(font, 10, 10, color: 3)
  Drawer.background(0)

  # シーン1
  t.text = "西暦から令和に\n変換する方法"

  # シーン2
  c.until_time 3
  t.text = "西暦から\n"
  c.wait 1
  t.text += "2018を引く"

  # シーン3
  c.until_time 6
  t.text = "2019 → 令和元年\n"
  c.wait 1
  t.text += "2020 → 令和2年\n"
  c.wait 1
  t.text += "2021 → 令和3年\n"
  c.wait 2
end

App.run