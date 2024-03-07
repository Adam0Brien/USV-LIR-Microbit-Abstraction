namespace USVSensorPod {


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

    export enum Motors {
        //%blockId=usv_motor_one
        //% block="Left Motor"
        Motor1 = 0,
        //%blockId=usv_motor_two
        //% block="Right Motor"
        Motor2 = 1
    }

    /**
     * Configure the USV Motors.
     */
    //% weight=50 
    //% color=#7F74D5
    //% subcategory=USV
    //% group="Movement"
    //% blockId=USV_Motor block="Move |%Motor|%speed"
    //% speed.min=60 speed.max=120
    //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
    export function USV_Motor(index: Motors, speed: direction): void {

        if (index == 0) {
            // turn left motor
        }
        if (index == 1) {
            // turn right motor
        }

    }


    //% blockId=stopMotors
    //% block="Stop Motors"
    //% weight=50 
    //% color=#7F74D5
    //% subcategory=USV
    //% group="Movement"
    export function stopMotors(): void {

    }


    export enum Crane {
        //%blockId=crane_down
        //% block="Down"
        down = 0,
        //%blockId=crane_up
        //% block="Up"
        up = 1
    }


    /**
     * Configure the USV Crane.
     */
    //% weight=50 
    //% color=#29D215
    //% subcategory=USV
    //% group="Crane"
    //% blockId=USV_Crane block="Bring Crane |%Motor"
    //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
    export function craneDirection(index: Crane): void {

        if (index == 0) {
            // crane down
        }
        if (index == 1) {
            // crane up
        }

    }


    //% blockId=calculateTempC
    //% block="Sensor Pod Temperature °C"
    //% subcategory=Sensor Pod
    //% color=#442FDE
    //% group="Sensors"
    export function calculateTempC(): number {
        // Ask sensor pod for temperature through radio
        return 0
    }

    //% blockId=calculateTempF
    //% block="Sensor Pod Temperature °F"
    //% subcategory=Sensor Pod
    //% color=#442FDE
    //% group="Sensors"
    export function calculateTempF(): number {
        // Ask sensor pod for temperature
        return 0
    }

    //% blockId=calculatePh
    //% block="Sensor Pod pH"
    //% subcategory=Sensor Pod
    //% color=#442FDE
    //% group="Sensors"
    export function calculatePh(): number {
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

