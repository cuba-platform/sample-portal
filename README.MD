# Portal Sample

This is a showcase [CUBA](https://www.cuba-platform.com/) application that demonstrates portal module.

* The `MenuController` loads a list of items to display them for authorized and unauthorized users.
* The `web` folder contains a single-page website with AngularJS which communicates with the main application through [REST API](https://docs.cuba-platform.com/cuba/latest/manual/en/html-single/manual.html#rest_api).
* The `OrderListener` uses to setting default status and user  [before insert](https://docs.cuba-platform.com/cuba/latest/manual/en/html-single/manual.html#entity_listeners).

To see the example in action, do the following:

* Open the project in Studio
* Click *Run > Start application server*
* If you see the warning *Database does not exist ...*, click *Create DB in background*
* Go to `http://localhost:8080/app` and log in as `admin` / `admin` to watch the main app
* Go to `http://localhost:8080/app-portal` and log in as `demo` / `demo` to watch the portal module

Based on CUBA Platform 6.2