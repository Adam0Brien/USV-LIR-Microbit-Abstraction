dstemp.sensorError(function (errorMessage, errorCode, port) {
    basic.pause(200)
    serial.writeLine("Temp error:" + errorMessage + errorCode)
    basic.pause(200)
    led.toggle(0, 0)
})
let temp = 0
radio.setGroup(6)
basic.showIcon(IconNames.Yes)
I2C_LCD1602.on()
I2C_LCD1602.LcdInit(39)
I2C_LCD1602.BacklightOn()
basic.forever(function () {
    basic.pause(200)
    temp = dstemp.celsius(DigitalPin.P8)
    basic.pause(200)
    serial.writeLine("Temp:" + Math.round(temp))
    I2C_LCD1602.ShowString("Temp:" + Math.round(temp), 0, 0)
    led.toggle(1, 0)
    I2C_LCD1602.clear()
})

