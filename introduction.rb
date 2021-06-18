require 'clip'

App.window_size(400, 225)
App.end_time = 7

hello3 = GifReader.new("resource/hello3.gif")
ui = GifReader.new("resource/timelineui2.gif")
font = Font.new(30)

script do |scene|
  Drawer.background("green")
end

script do |root|
  root.scene_script do |scene|
    scene.text(font, 80, 100, color: "navy", text: "ClipScriptの紹介")
    scene.wait 1
  end

  root.scene_script do |scene|
    g = scene.gif(hello3, x: 100, y: 70)
    g.playback_rate = 4
    g.scale(0.5, 0.5)
    scene.text(font, 10, 10, color: "navy", text:"gifアニメの再生")
    scene.wait 2
  end

  root.scene_script do |scene|
    g = scene.gif(ui, x: 0, y: 0)
    g.width = 400
    t = scene.text(font, 40, 50, color: "red", text:"オーバーレイも")
    scene.wait 2
    t.text += "できるよ"
    scene.wait 2
  end
end

App.run