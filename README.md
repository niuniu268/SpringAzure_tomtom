# Applied TOMTOM Map API and CRUD

## Applied TOMTOM Map API

- using api to pinpoint the latitude and longitude of a certain location
- applying api to look for walking and driving itineraries respectively
- Offering to two alternatives of the driving itineraries
1. eco
2. normal
- opening an api to my colleague who is in charge of communal map
- delivering data which is selected by users
- the delivering data includes start point, destination distance, duration and way


##CRUD

- Using delivering data to set up a favorite list: url CURL -X GET ~/favorites
- Adding the delivering data: url curl -X GET ~/favorites/1
- Deleting a certain data: url curl -X DELETE ~/favorites/1