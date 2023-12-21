radio.setGroup(1)
basic.showLeds(`
    . . # # .
    . . # . #
    . . # # .
    . . # . #
    . . # . #
    `)
basic.forever(function () {
    led.plot(2, 2)
    led.unplot(2, 2)
    if (input.rotation(Rotation.Pitch) < 50 && input.rotation(Rotation.Pitch) > -50) {
        radio.sendValue("right", Math.round(Math.map(input.rotation(Rotation.Roll), 0, 90, 0, 50)))
    }
})

