radio.onReceivedNumber(function (receivedNumber) {
    if (receivedNumber == 0) {
        USVMode = 0
    } else if (receivedNumber == 1) {
        USVMode = 1
    }
})
function shortestPathToCourse (actualDegree: number, intendedDegree: number) {
    intendedDegree = intendedDirection
    degreeDifference = intendedDegree - actualDegree
    if (degreeDifference > 180) {
        degreeDifference += 0 - 360
    } else if (degreeDifference < -180) {
        degreeDifference += 360
    }
    serial.writeLine("" + (degreeDifference))
    return degreeDifference
}
radio.onReceivedString(function (receivedString) {
    if (receivedString == "up") {
        pins.digitalWritePin(DigitalPin.P11, 0)
        pins.digitalWritePin(DigitalPin.P12, 1)
    } else if (receivedString == "down") {
        pins.digitalWritePin(DigitalPin.P11, 1)
        pins.digitalWritePin(DigitalPin.P12, 0)
    } else if (receivedString == "stop") {
        pins.digitalWritePin(DigitalPin.P11, 0)
        pins.digitalWritePin(DigitalPin.P12, 0)
    }
})
radio.onReceivedValue(function (name, value) {
    led.toggle(2, 4)
    if (USVMode == 0) {
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
    } else if (USVMode == 1) {
        timerCounter = 0
        if (name == "aCompass") {
            led.toggle(0, 1)
            // Example usage (assuming actualDegree and intendedDirection are obtained from sensors/inputs)
            // Example actual degree
            actualDegree = value
        } else if (name == "dCompass") {
            led.toggle(0, 2)
            intendedDirection = value
        }
        if (name == "ar") {
            speed = value
        }
        degreeDifference2 = shortestPathToCourse(actualDegree, intendedDegree)
        correctCourse(degreeDifference2, speed)
        led.toggle(4, 4)
    }
})
function correctCourse (degreeDiff: number, speed: number) {
    radio.sendValue("diff", degreeDiff)
    if (degreeDiff <= -80 || degreeDiff >= 80) {
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo1, speed)
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo2, speed - 180)
    }
    if (degreeDiff <= 30 && degreeDiff >= -30) {
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo1, 92)
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo2, 78)
    }
    if (degreeDiff >= 31 && degreeDiff <= 81) {
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo1, 85)
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo2, 78)
    } else if (degreeDiff <= -31 && degreeDiff >= -81) {
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo1, 92)
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo2, 85)
    }
}
let degreeDifference2 = 0
let speed = 0
let actualDegree = 0
let degreeDifference = 0
let intendedDirection = 0
let intendedDegree = 0
let timerCounter = 0
let USVMode = 0
USVMode = 0
timerCounter = 0
basic.showLeds(`
    . . . . .
    . . . . #
    . . . # .
    # . # . .
    . # . . .
    `)
radio.setGroup(73)
basic.forever(function () {
    led.toggle(2, 2)
    timerCounter += 1
    if (timerCounter > 5) {
        basic.showLeds(`
            # . . . #
            . # . # .
            . . # . .
            . # . # .
            # . . . #
            `)
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo1, 85)
        Kitronik_Robotics_Board.servoWrite(Kitronik_Robotics_Board.Servos.Servo2, 85)
    }
    basic.clearScreen()
})
