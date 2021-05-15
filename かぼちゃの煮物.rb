require 'clip'

App.end_time = 15

font = Font.new(50)
font_s = Font.new(30)

pumpkin = Texture.new(Emoji.new("🎃"), TextureDesc::Mipped)

script do |c|
  Drawer.background("black")
end

script do |root|
  # シーン1
  root.scene_script do |scene|
    t = scene.text(font, 120, 120, color: "orange")
    t.text = "かぼちゃの煮物"

    pumpkin_left = scene.texture(pumpkin, 40, 120)
    pumpkin_left.scale(0.5, 0.5)
  
    pumpkin_right = scene.texture(pumpkin, 480, 120)
    pumpkin_right.scale(0.5, 0.5)

    scene.until_time 3
  end

  # シーン2
  root.scene_script do |scene|
    t = scene.text(font, 10, 10, color: "orange")

    t.text = "かぼちゃ 1/4個\n"
    scene.wait 0.8
    t.text += "砂糖 大さじ1\n"
    scene.wait 0.8
    t.text += "醤油 大さじ1\n"
    scene.wait 0.8

    scene.until_time 4
  end

  # シーン3
  root.scene_script do |scene|
    t = scene.text(font_s, 10, 10, color: "orange")
    t.text = "1. かぼちゃを入れて水の高さは1.5cm位\n"
    scene.wait 2
    t.text += "2. 砂糖入れて蓋して中火で蒸し煮\n"
    scene.wait 2
    t.text += "3. 醤油入れて鍋を回して煮汁を絡ませる\n"
    scene.wait 2
  end
end

App.run