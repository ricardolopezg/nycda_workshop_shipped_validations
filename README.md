Create a Rails application for shippers to help them organize all of the ships in their fleet, with a user login system using Devise. The application should be able to, at its most basic, allow users to:

* sign up and login
* add new boats to their profile, meant to be managed by that user, including a boat name, amount of containers able to ship, and current boat location
* assign "jobs" to boats, including containers needed, cargo, origin, cost for job, and destination


Once you have the basics setup, add some validations:

**boats:**

* must have a unique name
* locations must be pulled from a valid list of locations (use a hard-coded list)

**jobs:**

* must have a unique name
* cost must be above $1000 for each job
* cargo description must be at least 50 characters
* origin and destinations must be pulled from a valid list of locations (use a hard-coded list)