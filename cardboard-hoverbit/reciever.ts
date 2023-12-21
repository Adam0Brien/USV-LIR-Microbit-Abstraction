radio.onReceivedValue(function (name, value) {
    move(name, value)
})
function move (text: string, num: number) {
    if (text == "right") {
        hoverbit.motor_power(list_motor.M0, num)
    } else if (text == "left") {
        hoverbit.motor_power(list_motor.M2, num)
    }
}
radio.setGroup(1)
motobit.enable(MotorPower.On)

