input.onButtonPressed(Button.A, function () {
    USV.deployDirection(USV.SensorDeploy.down, 1)
    basic.pause(100)
    USV.deployDirection(USV.SensorDeploy.up, 1)
})
input.onButtonPressed(Button.B, function () {
    USV.USV_Motor(USV.Motors.Both, USV.Speed.ForwardSlow, 4)
})
radio.setGroup(73)
basic.showIcon(IconNames.Happy)


