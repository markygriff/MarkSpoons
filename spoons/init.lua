local modulePath = (...):match("(.-)[^%.]+$")

require(modulePath .. 'drag_terminals')
require(modulePath .. 'moveWindowOneSpace')
