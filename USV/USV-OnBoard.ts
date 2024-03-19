// https://makecode.microbit.org/S76714-87804-82233-11443

// heartbeat
radio.onReceivedValueDeprecated(function (name, value) {
    led.toggle(2, 4)
    if (name == "right") {
        serial.writeLine("right" + ("" + Math.abs(value - 5)))
        timerCounter = 0
        led.toggle(0, 4)
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo1, Math.abs(value - 5))
    }
    if (name == "left") {
        timerCounter = 0
        led.toggle(4, 0)
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo2, Math.abs(value - 6))
    }
    if ("up" == name) {
        timerCounter = 0
        USV_OnBoard.deployDirection(USV_OnBoard.SensorDeploy.up)
    } else if ("down" == name) {
        timerCounter = 0
        USV_OnBoard.deployDirection(USV_OnBoard.SensorDeploy.down)
    } else if ("stop" == name) {
        timerCounter = 0
        USV_OnBoard.deployDirection(USV_OnBoard.SensorDeploy.stop)
    }
})
input.onButtonPressed(Button.A, function () {
    Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo4, 180)
})
input.onButtonPressed(Button.B, function () {
    Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo4, 0)
})
let timerCounter = 0
timerCounter = 0
basic.showLeds(`
    . . . . .
    . . . . .
    . . # . .
    . . . . .
    # . . . .
    `)
radio.setGroup(1)
basic.forever(function () {
    led.toggle(2, 2)
    timerCounter += 1
    if (timerCounter > 5) {
        basic.showLeds(`
            . . # . .
            . . # . .
            . . # . .
            . . # . .
            . . # . .
            `)
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo1, 85)
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo2, 85)
    }
    basic.clearScreen()
})
