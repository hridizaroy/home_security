#include "HomeSecurity.h"
#include "Parser.h"

Room rooms[5]; // A fixed size array of Room objects

int main(int argc, char** argv)
{

    // if filename not provided
    if (argc < 2) {
        // print error message
        cout << "Please provide filename: syntax is './hs {filename}' " << endl;
        return -1;
    }

    string file = argv[1]; // get the filename
    JSONParser jp(file); // For parsing the file

    // Read all the JSON entries and parse the values into a vector
    vector<Json::Value> lines = jp.ParseRooms();

    // Loop through the vector
    for (Json::Value s : lines)
    {
        // Format: ROOM,SID,HH:MM:SS,TYPE,VALUE        
        vector<string> data = jp.ParseRoomData(s); // Parse each JSON object to get a vector string

        int roomId = stoi(data[0]); // get the index for the room

        // Call LoadData to take the vector array and populate the room
        rooms[roomId].LoadData(data);
    }

    return 0;
}


