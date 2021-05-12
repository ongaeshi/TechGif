require 'clip'

App.end_time = 16

font = Font.new(70)
$font_large = Font.new(60)

def background(c, x, y)
  c.text($font_large, x, y, color: [0, 0, 0, 32], text: "西暦 令和 西暦 令和")
end

script do |c|
  Drawer.background(0)

  background(c, 20, 0)
  background(c, 20, 100)
  background(c, 20, 200)
  background(c, 20, 300)
  background(c, 20, 400)
end

script do |c|
  t = c.text(font, 10, 10, color: 3)
  t2 = c.text(font, 10, 100, color: 3)
  t3 = c.text(font, 10, 200, color: 3)

  # シーン1
  text_center = c.text(font, 50, 50, color: 3)
  text_center.text = "西暦から令和に\n変換する方法"

  # シーン2
  c.until_time 3
  text_center.text = "西暦から\n"
  c.wait 1
  text_center.text += "2018を引く"

  # シーン3
  c.until_time 6
  text_center.text = ""
  t.text = "2019 - 2018\n"
  c.wait 0.8
  t.text = "2019 - 2018 = 1\n"
  c.wait 0.8
  t.text = "2019 → 令和元年\n"

  c.until_time 9
  t2.text = "2020 - 2018\n"
  c.wait 0.8
  t2.text = "2020 - 2018 = 2\n"
  c.wait 0.8
  t2.text = "2020 → 令和2年\n"

  c.until_time 12
  t3.text = "2021 - 2018\n"
  c.wait 0.8
  t3.text = "2021 - 2018 = 3\n"
  c.wait 0.8
  t3.text = "2021 → 令和3年\n"

  c.wait 2
end

App.run