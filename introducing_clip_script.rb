require 'clip'

App.window_size(800, 450)
App.end_time = 17

font_l = Font.new(80)
font = Font.new(50)
font_m = Font.new(40)
font_s = Font.new(25)

pumpkin = Texture.new(Emoji.new("ð"))
spoon = Texture.new(Emoji.new("ð¥"))

script do |scene|
  Drawer.background("white")

  (0..10).each do |x|
    (0..10).each do |y|
      if (x + y) % 2 == 0
        scene.rect(x * 80, y * 80, 80, 80, color: "aqua")
        scene.wait 0.02
      end
    end
  end
end

script do |root|
  root.scene_script do |scene|
    scene.wait 0.5

    scene.text(font_l, 90, 170, color: "navy", text: "ClipScriptã®ç´¹ä»")

    scene.wait 2.5
  end

  root.scene_script do |scene|
    scene.text(font_m, 10, 10, color: "navy", text: <<EOS)
ç­ãåç»ãç°¡åã«ä½æã§ããã¹ã¯ãªãã

<ãã­ã¹ãç·¨éããªãã
 Hello, Worldãã¢ãä½ã
 gifãåéã§åç>
EOS

    scene.wait 3
  end

  root.scene_script do |scene|
    scene.text(font_m, 10, 10, color: "black", text: <<EOS)
æéã¨é£åããå¦çãæ¸ãããã

<ã½ã¼ã¹ã³ã¼ãã®ä¸æçµµ>
EOS

    scene.wait 3
  end

  root.scene_script do |scene|
    scene.text(font_s, 10, 10, color: "black", text: <<EOS)
ä½æãããã­ã°ã©ã ã¯ããã©ã«ãã§
ä¸æåæ­¢ãéåçãã§ãã¾ãã

<ã¿ã¤ã ã©ã¤ã³UIãåããgif>
EOS

    scene.wait 3
  end

  root.scene_script do |scene|
    scene.text(font_s, 10, 10, color: "black", text: <<EOS)
gifã¢ãã¡ã¼ã·ã§ã³ã®åçããµã¤ãºå¤æ´ãåçã¬ã¼ãèª¿æ´ãç°¡åã§ãã

<gifã¢ãã¡ã¼ã·ã§ã³ãç·¨éããgif>
EOS

    scene.wait 3
  end

  root.scene_script do |scene|
    scene.text(font_s , 10, 10, color: "black", text: <<EOS)
Enjoy!

https://github.com/ongaeshi/ClipScript/
EOS

    scene.wait 3
  end
end

App.run