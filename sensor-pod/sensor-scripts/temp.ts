let temp = 0
radio.setGroup(6)
basic.showIcon(IconNames.Yes)
basic.forever(function () {
    temp = dstemp.celsius(DigitalPin.P5)
    if (temp >= 0) {
        serial.writeLine("Temp:" + temp)
    }
    basic.pause(5000)
})
