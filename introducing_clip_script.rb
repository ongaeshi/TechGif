require 'clip'

App.window_size(800, 450)
App.end_time = 17

font = Font.new(50)
font_s = Font.new(25)

pumpkin = Texture.new(Emoji.new("🎃"))
spoon = Texture.new(Emoji.new("🥄"))

script do |c|
  Drawer.background("white")
end

script do |root|
  root.scene_script do |scene|
    scene.text(font, 120, 120, color: "black", text: "ClipScriptの紹介")
    scene.wait 2
  end

  root.scene_script do |scene|
    scene.text(font_s, 10, 10, color: "black", text: <<EOS)
短い動画を簡単に作成するためのスクリプト言語です。

<テキスト編集しながら
 Hello, Worldデモを作る
 gifを倍速で再生>
EOS

    scene.wait 3
  end

  root.scene_script do |scene|
    scene.text(font_s, 10, 10, color: "black", text: <<EOS)
時間と連動した処理が書きやくなるように設計されています。

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