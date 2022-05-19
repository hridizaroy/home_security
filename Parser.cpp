#include "Parser.h"

JSONParser::JSONParser(string _filePath) {
    this->filePath = _filePath;
}

vector<Json::Value> JSONParser::ParseRooms() {
    vector<Json::Value> rooms;
    string strjson = "";

    ifstream inputStream(filePath);

    if (inputStream.is_open() == false)
        return rooms; // return empty vector if file is not open

    string line;

    while ( getline(inputStream, line) ) {
        strjson += line;
    }

    inputStream.close();

    Json::Reader reader;
    Json::Value root;

    if ( reader.parse(strjson, root) ) {

        int size = root.size();

        for ( int i = 0; i < size; i++ ) {
            rooms.push_back(root[i]);
        }
    }

    return rooms;
}

vector<string> JSONParser::ParseRoomData(Json::Value roomData) {
    vector<string> result;

    string roomId = roomData["ROOM"].asString();
    string sid = roomData["SID"].asString();
    string timeStamp = roomData["TIME"].asString();
    string type = roomData["TYPE"].asString();
    string value = roomData["VALUE"].asString();

    // Format: ROOM, SID, TIME, TYPE, VALUE
    result.push_back(roomId);
    result.push_back(sid);
    result.push_back(timeStamp);
    result.push_back(type);
    result.push_back(value);

    return result;
}