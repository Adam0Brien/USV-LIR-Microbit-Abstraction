namespace USV {


    export enum direction {
        //% block="Forward Fast"
        ForwardFast = 120,
        //% block="Backward Fast"
        BackwardsFast = 60,
        //% block="Forward Slow"
        ForwardSlow = 95,
        //% block="Backward Slow"
        BackwardSlow = 80,
        //% block="Stop"
        Stop = 90,
    }

    export enum Motors {
        //%blockId=usv_motor_one
        //% block="Left Motor"
        Motor1 = 0,
        //%blockId=usv_motor_two
        //% block="Right Motor"
        Motor2 = 1,
        //%blockId=usv_motor_both
        //% block="All Motors"
        Both = 2
    }

    /**
     * Configure the USV Servos.
     */
    //% weight=50 
    //% color=#7F74D5
    //% subcategory=USV
    //% group="Movement"
    //% blockId=USV_Motor block="Move |%Motor|%speed for |%ms seconds"
    //% speed.min=60 speed.max=120
    //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
    export function USV_Motor(index: Motors, speed: direction, sec: number): void {
        if (index == 0) {
            for(let index = 0; index <= sec; index++) {
                for (let index = 0; index <= 10; index++) {
                    basic.pause(100)
                    radio.sendValue("left", speed)
                }
            }
        }
        if (index == 1) {
            for (let index = 0; index <= sec; index++) {
                for (let index = 0; index <= 10; index++) {
                    basic.pause(100)
                    radio.sendValue("right", speed)
                }
            }
        }
        if (index == 2) {
            for (let index = 0; index <= sec; index++) {
                for (let index = 0; index <= 10; index++){
                    basic.pause(100)
                    radio.sendValue("left", speed)
                    radio.sendValue("right", speed)
                }
            }
        }
    }

    //% blockId=stopMotors
    //% block="Stop Motors"
    //% weight=50 
    //% color=#7F74D5
    //% subcategory=USV
    //% group="Movement"
    export function stopMotors() {
        radio.sendValue("left", 90)
        radio.sendValue("right", 90)
    }


    //% blockId=ArmUSV
    //% block="Arm USV"
    //% weight=50 
    //% color=#7F74D5
    //% subcategory=USV
    //% group="Startup"
    export function armUSV() {
        let Arm = 1
    }

    //% blockId=disarmUSV
    //% block="Disarm USV"
    //% weight=50 
    //% color=#7F74D5
    //% subcategory=USV
    //% group="Startup"
    export function disarmUSV() {
        let Arm = 0
    }


    export enum SensorDeploy {
        //%blockId=sensor_down
        //% block="Down"
        down = 0,
        //%blockId=sensor_up
        //% block="Up"
        up = 1
    }

    /**
     * Configure the USV Sensor deployment mechanism.
     */
    //% weight=50 
    //% color=#29D215
    //% subcategory=USV
    //% group="Sensor Deployment"
    //% blockId=USV_Deploy
    //% block="Sensor Deploy |%Motor for %number seconds"
    //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
    export function deployDirection(index: SensorDeploy, value: number): void {
        if (index == 0) {
            radio.sendValue("down", 0)
            basic.pause(value * 1000)
            radio.sendValue("stop", 0)
        }
        if (index == 1) {
            radio.sendValue("up", 0)
            basic.pause(value * 1000)
            radio.sendValue("stop", 0)
        }
    }

    //% weight=50 
    //% color=#29D215
    //% subcategory=USV
    //% group="Sensor Deployment"
    //% blockId=USV_Deploy_Stop
    //% block="Stop Deploy"
    //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
    export function deployStop(): void {
        radio.sendValue("stop", 0)
    }


    //% blockId=getTempC
    //% block="Sensor Pod Temperature °C"
    //% subcategory=Sensor Pod
    //% color=#442FDE
    //% group="Sensors"
    export function getTempC(): number {
        // Ask sensor pod for temperature through radio
        return 0
    }

    //% blockId=getTempF
    //% block="Sensor Pod Temperature °F"
    //% subcategory=Sensor Pod
    //% color=#442FDE
    //% group="Sensors"
    export function getTempF(): number {
        // Ask sensor pod for temperature
        return 0
    }

    //% blockId=getPh
    //% block="Sensor Pod pH"
    //% subcategory=Sensor Pod
    //% color=#442FDE
    //% group="Sensors"
    export function getPh(): number {
        // Ask sensor pod for pH
        return 0
    }

    //% blockId=Sensor Pod Light
    //% block="Sensor Pod Light"
    //% subcategory=Sensor Pod
    //% color=#442FDE
    //% group="Sensors"
    export function getLight(): number {
        // Ask sensor pod for LDR reading
        return 0
    }


}

