# README

# Jordan Spaulding Construction Website API 
Ruby on Rails API

Where To Next? is a travel planning app that allows a user to create a trip and add places they want to visit while they are on that trip. Within the trip show page -or rather where you can see the details of the trip and the places you want to go - there is a search bar that accesses a third-party API called <a href="https://serpapi.com/"> SerpApi </a> which scrapes Google results based on your search query and location input. 

# Technology used:
- <a href="https://github.com/robynspaulding/JSConstruction-API">Ruby on Rails backend - This Repo!</a>
- <a href="https://github.com/robynspaulding/JSConstruction-React-frontend">React.js frontend</a>
More to come ...



## Installation

```bash
git clone https://github.com/robynspaulding/JSConstruction-API.git
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

You can test web requests as documented in the `requests.http` file.

## Future plans

The goal for this API is to become a database for a construction website that will house the company's profiles/About section, protfolio and Woodshop inventory that the owner can update as needed from the front end
