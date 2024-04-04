microIoT.microIoT_MQTT_Event(microIoT.TOPIC.topic_1, function (message) {
	
})
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
input.onButtonPressed(Button.A, function () {
	
})
function sendIFTTTPost () {
    return microIoT.microIoT_http_post(
    "Hello World",
    "",
    "",
    10000
    )
}
radio.onReceivedValue(function (name, value) {
    if (name == "pH") {
        microIoT.microIoT_SendMessage("{\"" + name + "\":" + value + ",\"ispublic\":true}", microIoT.TOPIC.topic_1)
        led.toggle(4, 4)
    } else if (name == "temp") {
        microIoT.microIoT_SendMessage("{\"" + name + "\":" + value + ",\"ispublic\":true}", microIoT.TOPIC.topic_0)
        led.toggle(4, 4)
    } else if (name == "light") {
        microIoT.microIoT_SendMessage("{\"" + name + "\":" + value + ",\"ispublic\":true}", microIoT.TOPIC.topic_2)
        led.toggle(4, 4)
    }
})
function sendToNode (inputX: string, val: number, toggleX: number, toggleY: number) {
    radio.sendValue(inputX, val)
    led.toggle(toggleX, toggleY)
    basic.pause(delay)
    led.toggle(toggleX, toggleY)
}
let output_id = ""
let lenght = 0
let output_value = 0
let delay = 0
basic.showString("Server")
delay = 1000
microIoT.microIoT_WIFI("ADAM", "12345678")
microIoT.microIoT_MQTT(
"hYn5IyqJh7U9lfVdiSvSyJb1",
"ExMVG1hBAbrE0MFpyEwJJGJXAlT6zYwr",
"USVSensorPod/temp",
microIoT.SERVERS.Global
)
microIoT.microIoT_add_topic(microIoT.TOPIC.topic_1, "USVSensorPod/pH")
microIoT.microIoT_add_topic(microIoT.TOPIC.topic_2, "USVSensorPod/light")
radio.setGroup(73)
basic.showIcon(IconNames.Heart)
basic.clearScreen()
basic.forever(function () {
	
})
