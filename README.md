# Portal

This is a showcase CUBA application that contains a portal module with AngularJS client application.

* `MenuController` loads a list of items to display them for authenticated and anonimous users.
* The `web` folder contains a single-page website based on AngularJS which communicates with the main application through [REST API](https://doc.cuba-platform.com/manual-6.1/rest_api.html).
* `OrderListener` is an [entity listener](https://doc.cuba-platform.com/manual-6.1/entity_listeners.html) which is used to set a default status and user.

To see the example in action, do the following:

* Open the project in Studio
* Click *Run > Start application server*
* If you see the warning *Database does not exist ...*, click *Create DB in background*
* Go to `http://localhost:8080/app` and log in as `admin` / `admin` to see the main app
* Go to `http://localhost:8080/app-portal` and log in as `demo` / `demo` to see the portal module

Creating a new order:

* Go to `http://localhost:8080/app-portal` and log in as `demo` / `demo`
* Add to cart some items from menu
* Click *Place order*
* Go to `http://localhost:8080/app` and log in as `admin` / `admin`
* Open Orders browser to watch your order

You can change the status of your order via Order editor or you can set status `Canceled` by clicking *Cancel order* button in the portal application.

Creating a new position:

* Go to `http://localhost:8080/app` and log in as `admin` / `admin`
* Open Orders browser to add a new food item
* Refresh `http://localhost:8080/app-portal` to see it

Based on CUBA Platform 6.3.3
