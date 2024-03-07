basic.showNumber(0)
I2C_LCD1602.on()
I2C_LCD1602.LcdInit(39)
basic.forever(function () {
    serial.writeLine("" + (pins.analogReadPin(AnalogPin.P2)))
    basic.pause(1000)
    I2C_LCD1602.ShowString("Light: " + pins.analogReadPin(AnalogPin.P2), 1, 3)
})

