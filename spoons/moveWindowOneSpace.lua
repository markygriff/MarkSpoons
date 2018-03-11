-- Bound to capslock
local hyper = {"ctrl", "shift"}

function moveToSpace(space)
  local win = hs.window.frontmostWindow()
  local clickPoint    = win:zoomButtonRect()
  local sleepTime     = 1000
  local longSleepTime = 300000
  local mousePosition = hs.mouse.getAbsolutePosition()

  clickPoint.x = clickPoint.x + clickPoint.w + 5
  clickPoint.y = clickPoint.y + clickPoint.h / 2

  hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftMouseDown, clickPoint):post()

  hs.timer.usleep(sleepTime)

  hs.eventtap.keyStroke({ "ctrl" }, space)

  hs.timer.usleep(longSleepTime)

  hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftMouseUp, clickPoint):post()

  hs.mouse.setAbsolutePosition(mousePosition)
end

hs.hotkey.bind(hyper, "H", function()
  moveToSpace("left")
end)
hs.hotkey.bind(hyper, "Left", function()
  moveToSpace("left")
end)

hs.hotkey.bind(hyper, "L", function()
  moveToSpace("right")
end)
hs.hotkey.bind(hyper, "Right", function()
  moveToSpace("right")
end)
