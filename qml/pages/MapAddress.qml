import QtLocation 5.5
import QtQuick 2.5
import Felgo 3.0

/*

// USAGE:
// add the following piece of code inside your App { } to display the Map Page

MapAddress {

}

*/

Page {
    title: "Map Page"

    // show the map
    AppMap {
        // plugin: Plugin { name: "osm" }
        anchors.fill: parent
        // configure map provider
        plugin: Plugin {
            name: "osm"
            // configure your own map_id and access_token here
            parameters: [  PluginParameter {
                    name: "mapbox.mapping.map_id"
                    value: "mapbox/streets-v11"
                },
                PluginParameter {
                    name: "mapbox.access_token"
                    value: "pk.eyJ1IjoiZ3R2cGxheSIsImEiOiJjaWZ0Y2pkM2cwMXZqdWVsenJhcGZ3ZDl5In0.6xMVtyc0CkYNYup76iMVNQ"
                },
                PluginParameter {
                    name: "mapbox.mapping.highdpi_tiles"
                    value: true
                }]
        }
        /*
        // configure the map to try to display the user's position
        showUserPosition: true
        zoomLevel: 13

        // check for user position initially when the component is created
        Component.onCompleted: {
            if(userPositionAvailable)
                center = userPosition.coordinate
        }

        // once we successfully received the location, we zoom to the user position
        onUserPositionAvailableChanged: {
            if(userPositionAvailable)
                zoomToUserPosition()
        }
        */
    }
}
