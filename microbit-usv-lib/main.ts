namespace USV {

    //% blockId=deploy
    //% block="deploy sensor pod %v"
    export function deploy(): void { }

    //% blockId=initPod
    //% block="Initialise Sensor pod %v"
    export function initPod(): void { }

    //% blockId=move
    //% block="Move USV Forward%v"
    export function move(): void { }



    export enum direction {
        //% block="Forward Fast"
        FullSpeedForward = 120,
        //% block="Backward Fast"
        FullSpeedBackwards = 60,
        //% block="Forward Slow"
        HalfSpeedForward = 105,
        //% block="Backward Slow"
        HalfSpeedBackward = 75,
        //% block="Stop"
        Stop = 89,
    }

    export enum Servos {
        //%blockId=kitronik_motordriver_motor_one
        //% block="Servo 1"
        Servo1 = 0,
        //%blockId=kitronik_motordriver_motor_two
        //% block="Servo 2"
        Servo2 = 1
    }

    /**
     * Configure the USV Servos.
     */
    //% weight=50
    //% blockId=USV_Servo block="Move |%Servo|%speed"
    //% speed.min=60 speed.max=120
    //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
    export function USV_Servo(index: Servos, speed: direction): void {
        let buf = pins.createBuffer(2);
        if (index == 0) {
            buf[0] = 0x14;
        }
        if (index == 1) {
            buf[0] = 0x15;
        }

        buf[1] = speed;
        pins.i2cWriteBuffer(0x16, buf);
    }


}
