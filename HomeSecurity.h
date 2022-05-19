#include <string>
#include <vector>

using namespace std;

#define MAXEVENTS (5)

// Base class
class HomeEvent {

    public:
        HomeEvent(); // Constructor
        virtual void Print(int room); // prints the event

        // Getters for fields
        string GetTime();
        int GetEventId();
        int GetSensorId();
        int GetSensorValue();

        // Setter
        virtual void SetData(int room, string time, int eventId, int sensorId, int sensorValue);

    protected:
        // fields
        string timeStamp;
        int eventId;																									
        int sensorId;
        int sensorValue;
};

// Class for a Temperature Event -> extends HomeEvent
class TemperatureEvent: public HomeEvent {

    public:
        // boundaries -> alert printed if temperature is out of bounds
        const int minTemp = 50;
        const int maxTemp = 110;

        // Print Temperature Event
        void Print(int room);

        // Setter
        void SetData(int room, string time, int eventId, int sensorId, int sensorValue);
};

// Class for a Carbon Monoxide Event -> extends HomeEvent
class COEvent: public HomeEvent {

    public:
        // boundary -> alert printed if Carbon Monoxide PPB out of bounds
        const int maxCO = 3000;

        // Print CO Event
        void Print(int room);

        // Setter
        void SetData(int room, string time, int eventId, int sensorId, int sensorValue);
};

// Class for an Intruder Event -> extends HomeEvent
class IntruderEvent: public HomeEvent {

    public:
        // Print intruder event
        void Print(int room);

        // Setter
        void SetData(int room, string time, int eventId, int sensorId, int sensorValue);
};

// Class to represent a room
class Room {
    
    public:
        Room(); // Constructor
        ~Room(); // Destructor

        // Setting the data for the room
        void LoadData(vector<string> data);

        // PrintEvents() will print all the events for the room
        // The sensor/event type that triggers the print command is passed into the method
        void PrintEvents(int _roomId, string time, int sensorId, int eventType);
    
    // fields
    protected:
        HomeEvent* events[MAXEVENTS]; // Array of pointers to events of this room
        int roomId;
        int lastEvent;
        int totalEvents;
        int oldestEvent;
};
