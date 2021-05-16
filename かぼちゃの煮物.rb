require 'clip'

App.end_time = 13

$font_title = Font.new(70)

font = Font.new(50)
font_s = Font.new(30)

pumpkin = Texture.new(Emoji.new("🎃"))
spoon = Texture.new(Emoji.new("🥄"))

def title(clip, text)
  clip.text($font_title, 10, 0, color: "orange", text: text)
end

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

    rot_speed = 1.5

    loop do
      break if scene.time >= 3

      pumpkin_left.rotate -= rot_speed
      pumpkin_right.rotate += rot_speed
      rot_speed *= -1 if pumpkin_left.rotate.abs > 10

      scene.wait_delta
    end
  end

  # シーン2
  root.scene_script do |scene|
    title(scene, "材料")

    t = scene.text(font, 10, 100, color: "silver")

    t.text = "かぼちゃ 1/4個\n"
    scene.texture(pumpkin, 380, 110).scale(0.5, 0.5)
    # TODO: 1/4の表現
    scene.wait 0.8
    t.text += "砂糖 大さじ1\n"
    scene.texture(spoon, 380, 180).scale(0.5, 0.5)
    scene.wait 0.8
    t.text += "醤油 大さじ1\n"
    scene.texture(spoon, 380, 250).scale(0.5, 0.5)
    scene.wait 0.8

    scene.until_time 4
  end

  # シーン3
  root.scene_script do |scene|
    title(scene, "作り方")

    t = scene.text(font_s, 10, 110, color: "silver")
    t.text = "1. かぼちゃを入れて水の高さは1.5cm\n"
    scene.wait 2
    t.text += "2. 砂糖入れて蓋して中火で蒸し煮\n"
    scene.wait 2
    t.text += "3. 醤油入れて鍋を回して煮汁を絡ませる\n"
    scene.wait 2
  end
end

App.run