- your designation is red-rover. you are sited at Musk city on mars. the only and largest city on mars, this year of 2031. There has been a crash on the far side of mars. A valuable biological capsule is at the site of the crash and has a damaged flux capacitor. This means it will be irrevocably damaged in 20 time units. 
- You accept the mission, in order to earn sufficient cash to refurbish your ailing components.
- 5 time units later (15 left) you have been airlifted to the crash location with your valuable payload - a flux capacitor and a robotic arm for installing the capacitor.
- Oops. you were let down 8 Li away (a Li is 500 meters), Manhattan distance.
- You have 15 time units to travel those 8 Li and also take 1 time unit to replace the flux capacitor. Night falls in 12 time units.
- A helpful map. Not so up-to-date, though:
- ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2FArtOfGig%2Fwa7ekBcL37.jpg?alt=media&token=a3b293b0-b07c-4ade-914a-56d98bf7e4f4)
- A bit about yourself. you are a six wheeled bougie rover. not new.
    - location:: A1 
    - Time:: T-15
    - Power:: 100W +100WU
    - Power::
        - Your solar panels are eh. They provide 100W in midday. You also have a 100W-unit battery (can supply 100W for one time unit). recharge efficiency is 50%.
    - Speed::
        - you can go between 0 and 3 Li per time unit.
        - power consumption is linear with speed.
        - power consumption is also linear with surface roughness (darker=rougher, range 1-3)
        - power consumption = speed*roughness*20W
    - Communications::
        - off mode - zero consumption
        - low bandwidth listen only: 10W
        - High bandwidth two way: 20W. 
        - Time delay for remote processing request: 1 time unit
    - Processing (image, planning)::
        - low, medium, high: 10, 20, 40 watts.
    - Payload::
        - on/off: 0/30W
    - Houskeeping functions::
        - 10W constant
- Before we start, please note task parameters chosen::
    - what is a rover
    - what is the task
    - there is a time budget
    - what other parameters do you think are useful to consider?
- Some events you can expect::
    - A dust storm can cover your solar panels and sun, reducing power
    - You can fall in a hole
    - Map can be rather wrong
    - Surface may be more interesting than you expect
    - ~~when~~ if you die, you may meet the real Martians. they are rather shy
