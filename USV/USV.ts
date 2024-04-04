namespace USV {

    let Arm = 1;
    //% blockId=armUSV
    //% block="Arm USV"
    //% weight=50 
    //% color=#2bd9ad
    //% subcategory=USV
    //% group="A. Startup"
    export function armUSV() {
        let Arm = 1
    }

    //% blockId=disarmUSV
    //% block="Disarm USV"
    //% weight=50 
    //% color=#2bd9ad
    //% subcategory=USV
    //% group="A. Startup"
    export function disarmUSV() {
        USV.stopMotors()
        let Arm = 0
    }

    export enum Speed {
        //% block="Forward Fast"
        ForwardFast = 120,
        //% block="Backward Fast"
        BackwardsFast = 60,
        //% block="Forward Slow"
        ForwardSlow = 100,
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
    //% group="B. Movement"
    //% blockId=USV_Motor block="Move |%Motor|%speed for |%ms seconds"
    //% speed.min=60 speed.max=120
    //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
    export function USV_Motor(motor: Motors, speed: Speed, sec: number): void {
        if(motor == 0) {
            if (Arm == 1) {
                for (let index = 0; index <= sec; index++) {
                    for (let index = 0; index <= 10; index++) {
                        basic.pause(100)
                        radio.sendValue("left", 180 - speed)
                    }
                }
            }
        }
        if (motor == 1) {
            if (Arm == 1) {
                for (let index = 0; index <= sec; index++) {
                    for (let index = 0; index <= 10; index++) {
                        basic.pause(100)
                        radio.sendValue("right", speed)
                    }
                }
            }
        }
        if (motor == 2) {
            if (Arm == 1) {
                for (let index = 0; index <= sec; index++) {
                    for (let index = 0; index <= 10; index++) {
                        radio.sendValue("left", 180 - speed)
                        radio.sendValue("right", speed)
                        basic.pause(100)
                    }
                }
            }
        }
    }

    //% blockId=stopMotors
    //% block="Stop Motors"
    //% weight=50 
    //% color=#7F74D5
    //% subcategory=USV
    //% group="B. Movement"
    export function stopMotors() {
        radio.sendValue("left", 90)
        radio.sendValue("right", 90)
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
    //% group="C. Sensor Deployment"
    //% blockId=USV_Deploy
    //% block="Sensor Deploy |%Motor for %number seconds"
    //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
    export function deployDirection(sensorState: SensorDeploy, value: number): void {
        if (sensorState == 0) {
            radio.sendValue("down", 0)
            basic.pause(value * 1000)
            radio.sendValue("stop", 0)
        }
        if (sensorState == 1) {
            radio.sendValue("up", 0)
            basic.pause(value * 1000)
            radio.sendValue("stop", 0)
        }
    }

    //% weight=50 
    //% color=#29D215
    //% subcategory=USV
    //% group="C. Sensor Deployment"
    //% blockId=USV_Deploy_Stop
    //% block="Stop Deploy"
    //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
    export function deployStop(): void {
        radio.sendValue("stop", 0)
    }

    export enum Direction {
        //% block="North"
        North = 0,
        //% block="East"
        East = 90,
        //% block="West"
        West = 270,
        //% block="South"
        South = 180,

    }
    /**
     * Configure the USV to Auto Drive.
     */
    //% weight=50 
    //% color=#7F76AB
    //% subcategory=USV
    //% group="D. Auto Movement"
    //% blockId=AUTO_USV block="Auto Drive |%Direction for %number seconds"
    //% speed.min=60 speed.max=120
    //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
    export function AUTO_USV(direction: Direction, sec: number): void {
        for (let index = 0; index <= sec; index++) {
            for (let index = 0; index <= 10; index++) {
            radio.sendValue("dCompass", direction)
            }
        }
    }

    function directionToDegree(direction: string) {
        if (direction == "N") {
            return 0
        } else if (direction == "NE") {
            return 45
        } else if (direction == "E") {
            return 90
        } else if (direction == "SE") {
            return 135
        } else if (direction == "S") {
            return 180
        } else if (direction == "SW") {
            return 225
        } else if (direction == "W") {
            return 270
        } else if (direction == "NW") {
            return 315
        } else {
            // Default to North if unknown
            return 0
        }
    }


    export enum SensorType {
        pH = 0,
        tempC = 1,
        light = 2,
    }

    function sensorListener(sensorType: SensorType) {
        let sensorName: string;
        
        if(sensorType == 0) {
                sensorName = "pH";
            } else if (sensorType == 1){
                sensorName = "tempC";
            } else if (sensorType == 2) {
                sensorName = "light";
        }

        radio.onReceivedValue(function (name, value) {
            if (name == sensorName) {
                serial.writeValue(name, value);
            }
        });
    }

    //% blockId="sensorListenerBlock"
    //% block="Listen for Sensor Pod |%SensorType value"
    //% subcategory="Sensors"
    //% color=#442FDE
    //% group="Sensors"
    export function sensorListenerBlock(sensorType: SensorType): void {
        sensorListener(sensorType);
    }

    
}

