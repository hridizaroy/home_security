#include <string>
#include <iostream>
#include <fstream>
#include <vector>

#include "json/json.h"

using namespace std;

class JSONParser {
    public:
        JSONParser(string _filePath);

        vector<Json::Value> ParseRooms();
        vector<string> ParseRoomData(Json::Value roomData);
    
    protected:
        string filePath;
};