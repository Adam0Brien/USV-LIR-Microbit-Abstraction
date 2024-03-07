function calculatePh (num: number) {
    if (num > 0 && num < 2.5) {
        pH = num * 3.5 + offset_4_7
    } else {
        pH = num * 3.5 - offset_10
    }
}
let voltage = 0
let pH = 0
let offset_10 = 0
let offset_4_7 = 0
offset_4_7 = 1.9
offset_10 = 1.21
basic.showLeds(`
    # . . . #
    . # # # .
    . # . # .
    . # # # .
    # . . . #
    `)
basic.forever(function () {
    voltage = pins.analogReadPin(AnalogPin.P0) * (3.3 / 1024)
    basic.pause(1000)
    calculatePh(voltage)
    serial.writeValue("ph", pH * 10 / 10)
    serial.writeValue("voltage", voltage)
})
