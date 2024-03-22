
control_var=rc:get_pwm(6)
function update()
    
    if (control_var ~= (rc:get_pwm(6))) then
        if arming:is_armed() then
            arming:disarm()
        elseif not arming:is_armed() then
            arming:arm()
        end
        c_var=rc:get_pwm(5)
    end
end
update() /*call function */
    
    
        
   
        
        

