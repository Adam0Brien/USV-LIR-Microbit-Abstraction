radio.onReceivedValue(function (name, value) {
    if (name == "up") {
        pins.digitalWritePin(DigitalPin.P11, 1)
        pins.digitalWritePin(DigitalPin.P12, 0)
    } else if (name == "down") {
        pins.digitalWritePin(DigitalPin.P11, 0)
        pins.digitalWritePin(DigitalPin.P12, 1)
    } else if (name == "stop") {
        pins.digitalWritePin(DigitalPin.P11, 0)
        pins.digitalWritePin(DigitalPin.P12, 0)
    }
})
radio.setGroup(73)
basic.showIcon(IconNames.Happy)
