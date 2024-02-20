dstemp.sensorError(function (errorMessage, errorCode, port) {
    basic.pause(200)
    serial.writeLine("Temp error:" + errorMessage + errorCode)
    led.toggle(0, 0)
    I2C_LCD1602.clear()
})
function calculateTemp () {
    temp = dstemp.celsius(DigitalPin.P8)
    basic.pause(200)
    serial.writeLine("Temp:" + Math.round(temp))
    temp2 = dstemp.celsius(DigitalPin.P8)
    if (temp >= -10 && temp <= 85) {
        temperature_C = temp
    } else {
        temperature_C = temp2
    }
}
function initBme280 () {
    BME280.PowerOn()
    BME280.Address(BME280_I2C_ADDRESS.ADDR_0x76)
}
function calculatePh (num: number) {
    if (num > 0 && num < 2.5) {
        pH = num * 3.5 + offset_4_7
    } else {
        pH = num * 3.5 - offset_10
    }
    serial.writeValue("ph", pH * 10 / 10)
    serial.writeValue("voltage", voltage)
}
let voltage = 0
let pH = 0
let temperature_C = 0
let temp2 = 0
let temp = 0
let offset_10 = 0
let offset_4_7 = 0
radio.setGroup(6)
basic.showLeds(`
    . . . . .
    . . . # .
    . . . . .
    # . . . #
    . # # # .
    `)
I2C_LCD1602.on()
I2C_LCD1602.LcdInit(39)
I2C_LCD1602.BacklightOn()
offset_4_7 = 1.9
offset_10 = 1.21
basic.forever(function () {
    basic.pause(200)
    led.toggle(1, 1)
    basic.pause(1000)
    voltage = pins.analogReadPin(AnalogPin.P0) * (3.3 / 1024)
    calculatePh(voltage)
    calculateTemp()
    I2C_LCD1602.ShowString("Temp:" + Math.round(temperature_C), 0, 0)
    I2C_LCD1602.ShowString("pH:" + Math.round(pH), 0, 1)
    basic.pause(2000)
})

