function onEvent(name,value1,value2)-- this event is from bb panzu 

    if name == "Set Cam Zoom" then
        
        setProperty("defaultCamZoom",value1) 
        if not value1 == '' then
            setProperty("camGame.zoom",value1) 
	end
            
    end


end