- Prompt Eric's status - https://docs.google.com/presentation/d/1A13bFuu6Q4-q5NAIydtSFYRULLdw9Wi8Eca0XUxk7pc/edit#slide=id.gcf3b9c9127_0_103
    - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FoO4WjWWGSY.png?alt=media&token=5fb505ff-9ac8-4594-9ba7-5fa24cd15002)
        - Dynamo on bicycle, RPS - mini nuclear plant on [[Curiosity Rover]] and Perseverance
        - Venkat - Solar panels in quadrant of Dynamo. RPS at the end of life is not stable
    - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2Fn_PPzPSXOH.png?alt=media&token=6300c4e9-7d80-42d4-9f9b-44fc206ca382)
        - Servo controller is a custom by vendor. It takes all the GPIO pins on RPi. 
    - Setup without battery - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2FWtjgQLScSE.png?alt=media&token=0d00d682-50fe-4589-bd7a-aedbecbb85c7)
    - Venkat - stacking hearder removed four pins? Reason?
        - Eric - Different voltage clashing? 
    - RPi powering
        - https://thepihut.com/blogs/raspberry-pi-tutorials/how-do-i-power-my-raspberry-pi
        - https://raspberrypi.stackexchange.com/questions/73126/can-i-power-a-pi-through-a-5v-pin
        - https://raspberrypi.stackexchange.com/questions/1617/how-do-i-supply-power-through-the-gpio
        - https://hackaday.com/2019/06/12/shorting-pins-on-a-raspberry-pi-is-a-bad-idea-pmic-failures-under-investigation/
        - PMIC on RPi - https://www.maxlinear.com/ds/mxl7704.pdf
        - https://raspberrypi.stackexchange.com/questions/100381/what-is-the-purpose-of-pd-sense-in-the-raspberry-pi-4-power-circuit
    - Jascha - USB max 2 amps
        - Use a oscilloscope to measure voltage spikes 
        - Ground loops
        - 
