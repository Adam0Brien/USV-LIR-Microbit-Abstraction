        namespace USVAPI {


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
             * Configure the USV Servos. # TODO
             */
            //% weight=50 
            //% color=#7F74D5
            //% subcategory=USV
            //% group="Movement"
            //% blockId=USV_Motor block="Move |%Motor|%speed"
            //% speed.min=60 speed.max=120
            //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
            export function USV_Motor(index: Motors, speed: direction): void {
                let buf = pins.createBuffer(2);
                if (index == 0) {
                    buf[0] = 0x14; // turn left motor
                }
                if (index == 1) {
                    buf[0] = 0x15; // turn right motor
                }
        
                buf[1] = speed;
                pins.i2cWriteBuffer(0x16, buf);
            }
        
            // # TODO
            //% blockId=stopMotors
            //% block="Stop Motors"
            //% weight=50 
            //% color=#7F74D5
            //% subcategory=USV
            //% group="Movement"
            export function stopMotors() { 
        
            }
        
        
            export enum SensorDeploy {
                //%blockId=sensor_down
                //% block="Down"
                down = 0,
                //%blockId=sensor_up
                //% block="Up"
                up = 1,
                //%blockId=sensor_stop
                //% block="Stop"
                stop = 2
        
            }
        
            /**
             * Configure the USV Sensor deployment mechanism.
             */
            //% weight=50 
            //% color=#29D215
            //% subcategory=USV
            //% group="Sensor Deployment"
            //% blockId=USV_Crane block="Sensor Deploy |%Motor"
            //% index.fieldEditor="gridpicker" index.fieldOptions.columns=2
            export function deployDirection(index: SensorDeploy): void {
                let buf = pins.createBuffer(2);
                if (index == 0) {
                    pins.digitalWritePin(DigitalPin.P11, 1) // crane down
                } else {
                    pins.digitalWritePin(DigitalPin.P11, 0)
                }
                if (index == 1) {
                    pins.digitalWritePin(DigitalPin.P12, 1) // crane up
                } else {
                    pins.digitalWritePin(DigitalPin.P12, 0)
                }
                if (index == 2) {
                    pins.digitalWritePin(DigitalPin.P12, 0)
                    pins.digitalWritePin(DigitalPin.P11, 0)
                }
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
        
        