dstemp.sensorError(function (errorMessage, errorCode, port) {
    basic.pause(200)
    serial.writeLine("Temp error:" + errorMessage + errorCode)
    basic.pause(200)
    led.toggle(0, 0)
})
let temp = 0
radio.setGroup(6)
basic.showIcon(IconNames.Yes)
basic.forever(function () {
    basic.pause(200)
    temp = dstemp.celsius(DigitalPin.P8)
    basic.pause(200)
    serial.writeLine("Temp:" + Math.round(temp))
    led.toggle(1, 0)
})

