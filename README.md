## A Home Security Simulation project written in C++

#### The build folder contains the build files and executable

#### The input files are in the data folder

#### Usage for windows
###### ./hs {input_filename}

#### Input file format (JSON)
###### [
######    {
######        "ROOM" : "Room number",
######        "SID" : "Sensor Id",
######        "TIME" : "Time Stamp",
######        "TYPE" : "Event Type",
######        "VALUE" : "Sensor Value"
######    }
###### ]

#### Event Types
###### 1: Temperature Event
###### 2: CO Event
###### 3: Intruder Event
###### 9: Print Command
