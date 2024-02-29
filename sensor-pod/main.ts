namespace USVSensorPod {


    //% blockId=Init Local Display
    //% block="Init Local Display"
    //% group="Display"
    export function initLocalDisplay() {
    LcdInit(39)
    on()
    BacklightOn()
    }
    //% blockId=calculateTempC
    //% block="Sensor Pod Temperature °C"
    //% group="Sensors"
    export function calculateTempC(): number {
        let temp = dstemp.celsius(DigitalPin.P8)
        basic.pause(200)
        serial.writeLine("Temp:" + Math.round(temp))
        let temp2 = dstemp.celsius(DigitalPin.P8)
        let temperature_C: number
        if (temp >= -10 && temp <= 85) {
            temperature_C = temp
        } else {
            temperature_C = temp2
        }
        return Math.round(temperature_C)
    }

    //% blockId=calculateTempF
    //% block="Sensor Pod Temperature °F"
    //% group="Sensors"
    export function calculateTempF(): number {
        let temp = dstemp.celsius(DigitalPin.P8)
        basic.pause(200)
        serial.writeLine("Temp:" + Math.round(temp))
        let temp2 = dstemp.celsius(DigitalPin.P8)
        let temperature_C: number
        if (temp >= -10 && temp <= 85) {
            temperature_C = temp
        } else {
            temperature_C = temp2
        }
        return (Math.round(temperature_C) * 9/5) + 32
    }

    //% blockId=calculatePh
    //% block="Sensor Pod pH"
    //% group="Sensors"
    export function calculatePh(): number {
        let offset_4_7 = 1.9
        let offset_10 = 1.21
        let pH = 0
        let voltage = pins.analogReadPin(AnalogPin.P0) * (3.3 / 1024)
        if (voltage > 0 && voltage < 2.5) {
            pH = voltage * 3.5 + offset_4_7
        } else {
            pH = voltage * 3.5 - offset_10
        }
        serial.writeValue("ph", pH * 10 / 10)
        serial.writeValue("voltage", voltage)
        return Math.round(pH)
    }

    //% blockId=Sensor Pod Light
    //% block="Sensor Pod Light"
    //% group="Sensors"
    export function getLight(): number {
        let light2 = Math.map(pins.analogReadPin(AnalogPin.P2), 0, 1023, 0, 100)
        return Math.round(light2)
    }



    /**
         * show a string in LCD at given position
         * @param s is string will be show, eg: "Hello"
         * @param x is LCD column position, [0 - 15], eg: 0
         * @param y is LCD row position, [0 - 1], eg: 0
         */
    //% blockId="ShowString" block="show string %s|at x %x|y %y"
    //% weight=90 blockGap=8
    //% x.min=0 x.max=15
    //% y.min=0 y.max=1
    //% group="Display"
    export function ShowString(s: string, x: number, y: number): void {
        let a: number

        if (y > 0)
            a = 0xC0
        else
            a = 0x80
        a += x
        cmd(a)

        for (let i = 0; i < s.length; i++) {
            dat(s.charCodeAt(i))
        }
    }
}



/**
* Taken from I2C_LCD1602
* makecode I2C LCD1602 package for microbit.
* From microbit/micropython Chinese community.
* http://www.micropython.org.cn
*/


    let i2cAddr: number // 0x3F: PCF8574A, 0x27: PCF8574
    let BK: number      // backlight control
    let RS: number      // command/data

    // set LCD reg
    function setreg(d: number) {
        pins.i2cWriteNumber(i2cAddr, d, NumberFormat.Int8LE)
        basic.pause(1)
    }

    // send data to I2C bus
    function set(d: number) {
        d = d & 0xF0
        d = d + BK + RS
        setreg(d)
        setreg(d + 4)
        setreg(d)
    }

    // send command
    function cmd(d: number) {
        RS = 0
        set(d)
        set(d << 4)
    }

    // send data
    function dat(d: number) {
        RS = 1
        set(d)
        set(d << 4)
    }

    // auto get LCD address
    function AutoAddr() {
        let k = true
        let addr = 0x20
        let d1 = 0, d2 = 0
        while (k && (addr < 0x28)) {
            pins.i2cWriteNumber(addr, -1, NumberFormat.Int32LE)
            d1 = pins.i2cReadNumber(addr, NumberFormat.Int8LE) % 16
            pins.i2cWriteNumber(addr, 0, NumberFormat.Int16LE)
            d2 = pins.i2cReadNumber(addr, NumberFormat.Int8LE)
            if ((d1 == 7) && (d2 == 0)) k = false
            else addr += 1
        }
        if (!k) return addr

        addr = 0x38
        while (k && (addr < 0x40)) {
            pins.i2cWriteNumber(addr, -1, NumberFormat.Int32LE)
            d1 = pins.i2cReadNumber(addr, NumberFormat.Int8LE) % 16
            pins.i2cWriteNumber(addr, 0, NumberFormat.Int16LE)
            d2 = pins.i2cReadNumber(addr, NumberFormat.Int8LE)
            if ((d1 == 7) && (d2 == 0)) k = false
            else addr += 1
        }
        if (!k) return addr
        else return 0

    }

    function LcdInit(Addr: number) {
        if (Addr == 0) i2cAddr = AutoAddr()
        else i2cAddr = Addr
        BK = 8
        RS = 0
        cmd(0x33)       // set 4bit mode
        basic.pause(5)
        set(0x30)
        basic.pause(5)
        set(0x20)
        basic.pause(5)
        cmd(0x28)       // set mode
        cmd(0x0C)
        cmd(0x06)
        cmd(0x01)       // clear
    }

    

    function on(): void {
        cmd(0x0C)
    }

    function off(): void {
        cmd(0x08)
    }

    function clear(): void {
        cmd(0x01)
    }

    function BacklightOn(): void {
        BK = 8
        cmd(0)
    }

    function BacklightOff(): void {
        BK = 0
        cmd(0)
    }
