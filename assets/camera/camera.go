components {
  id: "camera"
  component: "/rendercam/camera.script"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
  properties {
    id: "orthoScale"
    value: "0.4"
    type: PROPERTY_TYPE_NUMBER
  }
}
components {
  id: "camera_smoothing_x"
  component: "/assets/camera/camera_smoothing.script"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "ending"
  type: "sound"
  data: "sound: \"/resource/sound/ending_bgm.wav\"\n"
  "looping: 1\n"
  "group: \"BGM\"\n"
  "gain: 1.0\n"
  "pan: 0.0\n"
  "speed: 1.0\n"
  "loopcount: 0\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
