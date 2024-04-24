input.onButtonPressed(Button.A, function () {
    isSubmerged = 0
})
input.onButtonPressed(Button.B, function () {
    isSubmerged = 1
})
radio.onReceivedValue(function (name, value) {
    if (name == "up") {
        isSubmerged = 0
    } else if (name == "down") {
        isSubmerged = 1
    }
})
let isSubmerged = 0
radio.setGroup(73)
basic.showIcon(IconNames.Happy)
USVSensorPod.initLocalDisplay()
let ph_list: number[] = []
let light_list: number[] = []
let temp_list: number[] = []
isSubmerged = 0
basic.forever(function () {
    USVSensorPod.ShowString("Temp:" + USVSensorPod.calculateTempC(), 0, 0)
    USVSensorPod.ShowString("pH:" + USVSensorPod.calculatePh() + "  " + "Light:" + USVSensorPod.getLight(), 0, 1)
})
basic.forever(function () {
    if (isSubmerged == 1) {
        ph_list.push(USVSensorPod.calculatePh())
        temp_list.push(USVSensorPod.calculateTempC())
        light_list.push(USVSensorPod.getLight())
        basic.pause(100)
        led.toggle(4, 0)
    }
})
basic.forever(function () {
    if (isSubmerged == 0) {
        for (let value of ph_list) {
            radio.sendValue("pH", value)
            basic.pause(1000)
            ph_list.removeAt(ph_list.indexOf(value))
        }
    }
})
basic.forever(function () {
    if (isSubmerged == 0) {
        for (let value of light_list) {
            radio.sendValue("light", value)
            basic.pause(1000)
            led.toggle(0, 0)
            light_list.removeAt(light_list.indexOf(value))
        }
    }
})
basic.forever(function () {
    if (isSubmerged == 0) {
        for (let value of temp_list) {
            radio.sendValue("tempC", value)
            basic.pause(1000)
            temp_list.removeAt(temp_list.indexOf(value))
        }
    }
})
