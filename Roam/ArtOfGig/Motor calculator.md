- See [[Yak Motor Guide]] for a list of motors we have experience with
- Environment parameters:
    - g_earth: 9.81
    - g_mars: 3.71
- Motor parameters
    - motor_type: [[TT motor]]
    - torque_kgcm: tt_motor_torque_kgcm: 0.8
    - effective_rpm: tt_motor_rpm: 200
    - Convert kg-cm to N-m, but use earth gravity!!
    - torque_Nm: {{calc:((_bzgY5NKx))*((fGVanc1jM))/100}}
- Vehicle parameters
    - num_drive_wheels: 4
    - torque_Nm_total: {{calc:((rKEa0EM1o))*((yG12Tbdex))}}
    - wheel_radius_m: 0.03
    - tractive_force_per_motor_N: {{calc:((rKEa0EM1o))/((7vNBrGpS0))}}
    - total_tractive_force: {{calc:((sfzy0rdHr))*((yG12Tbdex))}}
    - robot_mass_kg: 3
- robot_weight_N_earth: {{calc:((dbclboxZT))*((fGVanc1jM))}}
- robot_weight_N_mars: {{calc:((dbclboxZT))*((aevl1qCr1))}}
- **WARNING**: Traction weight ratio <1 for gradient to be correct. This calculator silently produces wrong answers if you feed >1 to the asin function. This calculation assumes there is enough normal force and high enough coefficient of fiction that the motor torque is the only real constraint
- **traction_weight_ratio_earth**: {{calc: ((Np7htzfyJ))/(((Vr1EiR7WZ)))}}
- **max_gradient_earth_deg**: {{calc: 180*(asin((LJeqfXV9Z)))/3.14}}
- **traction_weight_ratio_mars**: {{calc: ((Np7htzfyJ))/(((yxDiKaMTa)))}}
- **max_gradient_mars_deg**: {{calc: 180*(asin((Audd8lrSI)))/3.14}}
- speed_meters_per_sec: {{calc: 2*3.14*((7vNBrGpS0))*((8LA2YVKMp))/60}}
- speed_km_per_h: {{calc: ((PbbD3udEH))*3600/1000}}
- NASA_Perseverance_speed_kmh: 0.016
- speed_ratio_to_perseverance: {{calc:((78t65z9Kw))/((G0USEIcVE))}}
