#include "HomeSecurity.h"
#include <iostream>

Room::Room() {
    // Initializing the fields
    this->totalEvents = 0;
    this->lastEvent = 0;
    this->oldestEvent = 0;
}

Room::~Room() {
	// Delete all of this room's events
	for (int i = 0; i < MAXEVENTS; i++) {
		delete this->events[i];
	}
}

// Receives the sensor data in a vector (each element is a string)
// Extract the data from vector elements per the format
// Call the SetData method of the appropriate child class (of HomeEvent) to process the event
void Room::LoadData(vector<string> data) {
	// Format: ROOM, SID, TIME, TYPE, VALUE
	// the data is already segregated in the vector
    
	this->roomId = stoi(data[0]); // convert string to integer
	
	// getting values from the vector
	int sid = stoi(data[1]); // sensor id
	string time = data[2]; // timeStamp
	
	int type = stoi(data[3]); // event type

	/**
	 * Event Types
	 * 1 : Temperature Event
	 * 2 : CO Event
	 * 3 : Intruder Event
	 * 9 : Print Command
	 */

	int value = stoi(data[4]);

	// essential variables
	int index;
	int eventId;
	int minTemp;
	int maxTemp;
	int maxCO;

	// if command is to print
	if ( type == 9 ) {
		this->PrintEvents(this->roomId, time, sid, type); // call the print method
	}
	// if command is to register an event
	else {

		if ( this->totalEvents == 0 ) { // if there are 0 events
			index = 0; // set index to 0
		}
		else {
			index = (this->lastEvent + 1) % MAXEVENTS; // set index to slot after the last event or to the beginning if buffer is full
		}

		// set oldest event to the next slot if the current index has reached the oldest event (and the total number of events is not 0)
		if ( index == this->oldestEvent && this->totalEvents != 0 ) {
			this->oldestEvent = (this->oldestEvent + 1) % MAXEVENTS;
			delete this->events[index]; // delete the old event being replaced
		}

		this->lastEvent = index; // set this as the latest event
		eventId = ++(this->totalEvents); // increment total event count

		// Create appropriate HomeEvent based on event type
		switch(type) {

			// temperature reading
			case 1:
				this->events[index] = new TemperatureEvent();
				this->events[index]->SetData(this->roomId, time, eventId, sid, value);
	
				minTemp = ((TemperatureEvent *)this->events[index])->minTemp;
				maxTemp = ((TemperatureEvent *)this->events[index])->maxTemp;
			
				// alert if too high or too low
				if ( value < minTemp || value > maxTemp ) {
					cout << "Temperature alert @ " << time << ": room " << this->roomId << " / " << "sensor " << sid << " / " << value << " degrees." << endl;
				}

				break;

			// CO reading
			case 2:
				this->events[index] = new COEvent();
				this->events[index]->SetData(this->roomId, time, eventId, sid, value);

				maxCO = ((COEvent *)this->events[index])->maxCO;

				// alert if too high
				if ( value > maxCO ) {
					cout << "Carbon monoxide alert @ " << time << ": room " << this->roomId << " / " << "sensor " << sid << " / " << value << " PPB." << endl;
				}
	
				break;

			// Intruder
			case 3:
				this->events[index] = new IntruderEvent();
				this->events[index]->SetData(this->roomId, time, eventId, sid, value);

				// intruder alert
				cout << "Intruder alert @ " << time << ": room " << this->roomId << " / " << "sensor " << sid << "." << endl;

				break;
		}				
	}
}

// Prints all the events for the room in reverse chronological order
void Room::PrintEvents(int _roomId, string time, int sensor, int eventType) {	
	cout << "*****" << endl;
	cout << "Home Security System: Room " << _roomId << " @ " << time << endl;
	cout << "Triggered by sensor " << sensor << endl;
	cout << this->totalEvents << " total room events" << endl;

	int i = this->lastEvent; // loop variable
	int prevI; // keeping track of previous value of i

	// loop from newest event to oldest	
	do {
		HomeEvent* event = this->events[i];

		if ( event ) {
			event->Print(_roomId);
		}

		prevI = i;

		i--;

		// if we've reached index 0
		if ( i < 0 ) {
			i = MAXEVENTS - 1; // go to the last index
		}
	}
	while ( prevI != this->oldestEvent );

}

HomeEvent::HomeEvent() {
	// intialize fields to placeholder values
	this->timeStamp = "";
	this->eventId = -1;
	this->sensorId = -1;
	this->sensorValue = -1;
}

// Base class event
void HomeEvent::SetData(int room, string time, int _eventId, int _sensorId, int _sensorValue) {
    this->timeStamp = time;
    this->eventId = _eventId;
    this->sensorId = _sensorId;
    this->sensorValue = _sensorValue;
}

// Accessors
string HomeEvent::GetTime() {
    return timeStamp;
}

int HomeEvent::GetEventId() {
    return eventId;
}

int HomeEvent::GetSensorId() {
    return sensorId;
}

int HomeEvent::GetSensorValue() {
	return sensorValue;
}

// Generic Print method for base class
void HomeEvent::Print(int room) {
    cout << "Generic Sensor alert @ " << timeStamp;
    cout << ": room " << room;
    cout <<" sensor " << sensorId << endl;
}

// Set data for TemperatureEvent
void TemperatureEvent::SetData(int room, string time, int _eventId, int _sensorId, int _sensorValue) {
	HomeEvent::SetData(room, time, _eventId, _sensorId, _sensorValue);
}

// Print a TemperatureEvent
void TemperatureEvent::Print(int room) {
	cout << "Sensor " << this->sensorId;
	cout << " @ " << this->timeStamp;
	cout << " temperature reading " << this->sensorValue << " degrees" << endl;
}

// Set Data for COEvent
void COEvent::SetData(int room, string time, int _eventId, int _sensorId, int _sensorValue) {
	HomeEvent::SetData(room, time, _eventId, _sensorId, _sensorValue);
}


// Print a COEvent
void COEvent::Print(int room) {
	cout << "Sensor " << this->sensorId;
	cout << " @ " << this->timeStamp;
	cout << " carbon monoxide reading " << this->sensorValue << " PPB" << endl;
}


// Set Data for IntruderEvent
void IntruderEvent::SetData(int room, string time, int _eventId, int _sensorId, int _sensorValue) {
	HomeEvent::SetData(room, time, _eventId, _sensorId, _sensorValue);
}

// Print an IntruderEvent
void IntruderEvent::Print(int room) {
    cout << "Sensor " << this->sensorId;
    cout << " @ " << this->timeStamp;
    cout << " intruder alert" << endl;
}