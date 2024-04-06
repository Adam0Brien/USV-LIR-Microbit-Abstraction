function parseJsonMessage (message: string) {
    led.toggle(0, 4)
    output_value = parseFloat(message.substr(message.indexOf(":") + 1, 9))
    lenght = message.length - convertToText(output_value).length
    lenght = lenght - 20
    output_id = message.substr(1, lenght)
    radio.sendValue(output_id, output_value)
}
function serialPrintMQTTMessage (text: string) {
    led.toggle(1, 4)
    serial.writeLine("Start")
    serial.writeLine(text)
    serial.writeLine("End")
}
microIoT.microIoT_MQTT_Event(microIoT.TOPIC.topic_4, function (message) {
    USV.deployDirection(USV.SensorDeploy.down, 1)
    basic.pause(2000)
    USV.deployDirection(USV.SensorDeploy.up, 1)
    sendIFTTTPost()
})
function sendIFTTTPost () {
    return microIoT.microIoT_http_post(
    tempC,
    pH,
    light2,
    10000
    )
}
radio.onReceivedValue(function (name, value) {
    if (name == "tempC") {
        microIoT.microIoT_SendMessage("{\"" + name + "\":" + value + "}", microIoT.TOPIC.topic_0)
        tempC = convertToText(value)
        led.toggle(4, 4)
    } else if (name == "pH") {
        microIoT.microIoT_SendMessage("{\"" + name + "\":" + value + "}", microIoT.TOPIC.topic_1)
        pH = convertToText(value)
        led.toggle(4, 4)
    } else if (name == "light") {
        microIoT.microIoT_SendMessage("{\"" + name + "\":" + value + "}", microIoT.TOPIC.topic_2)
        light2 = convertToText(value)
        led.toggle(4, 4)
    }
})
function sendToNode (inputX: string, val: number, toggleX: number, toggleY: number) {
    radio.sendValue(inputX, val)
    led.toggle(toggleX, toggleY)
    basic.pause(delay)
    led.toggle(toggleX, toggleY)
}
let light2 = ""
let pH = ""
let tempC = ""
let output_id = ""
let lenght = 0
let output_value = 0
let delay = 0
basic.showString("Server")
delay = 1000
microIoT.microIoT_WIFI("SKYRRZ2S", "CyGKfu4VffGe")
microIoT.microIoT_MQTT(
"hYn5IyqJh7U9lfVdiSvSyJb1",
"ExMVG1hBAbrE0MFpyEwJJGJXAlT6zYwr",
"USVSensorPod/tempC",
microIoT.SERVERS.Global
)
microIoT.microIoT_add_topic(microIoT.TOPIC.topic_1, "USVSensorPod/pH")
microIoT.microIoT_add_topic(microIoT.TOPIC.topic_2, "USVSensorPod/light")
microIoT.microIoT_add_topic(microIoT.TOPIC.topic_3, "USVSensorPod/turbidity")
microIoT.microIoT_add_topic(microIoT.TOPIC.topic_4, "USVSensorPod/deploy")
microIoT.microIoT_http_IFTTT("SensorDeploy", "mueyoNQjhWqz9r8pbQfVhqFPEBCBuqinmPDJ5oZYvoE")
radio.setGroup(73)
basic.showIcon(IconNames.Heart)
basic.clearScreen()
