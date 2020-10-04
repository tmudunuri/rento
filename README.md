
# **Rento** - *A Property Rental Management App*

A Web Application to manage property rentals.

 1. [Introduction](#intro)
 2. [Usage](#usage)
 3. [Design](#design)
 
 #### View [Demo](https://property-rental-management.herokuapp.com/)
 
##### **Technologies** : NodeJS, [Embedded JavaScript](https://ejs.co/), MySQL, JavaScript, HTML, CSS


## Intro
> **Rento** is a web application used to store and retrieve information for effective property management. It aims to make it convenient for lessors to manage their properties and corresponding rentals. The interface is used by lessors to manage all their properties and corresponding tenants. It will allow the lessor to access the database and sign up new tenants or to add new properties and houses.

- The system allows the lessor to search for current tenants based on the Aadhar, name, address, phone, gender and age. The system displays details of the all the tenants and properties.
- After search, the system displays a list of tenants and properties and allows the lessor to choose a property and view its corresponding tenant details. The system checks for the
availability of a house. If the house is available then the system allows the lessor to sign-up a tenant to the corresponding house. Otherwise it indicates unavailability.
- The filter feature of the application ensures seamless real-time retrieval of required properties or tenants. The number of tenants or properties retrieved are displayed as a function of the total number of records returned by a SQL query. This allows for quick and efficient summarization of the database.
- The main purpose of this software is to eliminate the hassle of manually managing numerous rental properties and associated tenants. The application aims to ease the process of onboarding tenants while also keeping an updated record of details of all the tenants. Negotiated rentals agreed upon by the lessor and the tenant may be recorded to avoid potential conflicts/ complications. 

## Usage
![Working Demo](/README/Main.gif)
- The app contains multiple search filters to view properties, individual house units and tenants.
- Each house unit is assigned an individual primary tenant.
- A primary tenant may contain co-tenants sharing the house unit.
- Each property may contain multiple house units *eg. an apartment complex containing multiple flats.*
- Finally, each house and tenant pair has rental agreement details.

### View [Demo](https://property-rental-management.herokuapp.com/)

## Design
There are 3 main entities in the database design:

1. `Property`: Each property is an independent unit composed of multiple house units.
2. `House`: A  House *(child component)* is a unit assigned to a given tenant.
3. `Tenant`: A tenant is the entity who rents or leases a house unit. Each tenant may be associated with a additional co-tenants.

### ER Diagram

![Entity–Relationship Diagram](/README/ER.png)


### ER Schema

![Entity–Relationship Schema](/README/Schema.jpg)

## Author
**Thrivikram Mudunuri** — [@tmudunuri](https://github.com/tmudunuri)
