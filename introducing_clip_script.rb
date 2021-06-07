require 'clip'

App.window_size(800, 450)
App.end_time = 17

font_l = Font.new(80)
font = Font.new(50)
font_m = Font.new(40)
font_s = Font.new(25)

pumpkin = Texture.new(Emoji.new("🎃"))
spoon = Texture.new(Emoji.new("🥄"))

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

    scene.text(font_l, 90, 170, color: "navy", text: "ClipScriptの紹介")

    scene.wait 2.5
  end

  root.scene_script do |scene|
    scene.text(font_m, 10, 10, color: "navy", text: <<EOS)
短い動画を簡単に作成できるスクリプト

<テキスト編集しながら
 Hello, Worldデモを作る
 gifを倍速で再生>
EOS

    scene.wait 3
  end

  root.scene_script do |scene|
    scene.text(font_m, 10, 10, color: "black", text: <<EOS)
時間と連動した処理が書きやすい

<ソースコードの一枚絵>
EOS

    scene.wait 3
  end

  root.scene_script do |scene|
    scene.text(font_s, 10, 10, color: "black", text: <<EOS)
作成したプログラムはデフォルトで
一時停止、逆再生ができます。

<タイムラインUIを動かすgif>
EOS

    scene.wait 3
  end

  root.scene_script do |scene|
    scene.text(font_s, 10, 10, color: "black", text: <<EOS)
gifアニメーションの再生、サイズ変更、再生レート調整も簡単です。

<gifアニメーションを編集するgif>
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