This app is an exercise to practice consuming an api from giphy.

## Requirements

1. - [] Set up testing suite to include rspec, shoulda-matchers, rubocop, and simplicov
2. Follow TDD
3. Get an API from giphy url: 'https://developers.giphy.com/dashboard/'
4. Use faraday and figaro

## Stories

### Story 1

When a visitor visits the home page

- [x] sees a welcome message
- [x] sees instructions
- [x] sees a search bar with a title indicating to input the query in it.
- [x] When fills in the search bar with a query and clicks 'Submit', is redirected to 'search/index'

### Story 2

- [x] There is navigation bar on top with a link to the home page

### Story 3

After the visitor presses submit in the search form in the home page gets redirected to the index page.
In the 'search/index' page the visitor

- [x] Sees the search words as a heading.
- [x] Sees a sample of 10 gifs matching the query created.

### Story 4

Facade patterns Implementation

- [x] There is a **Facade**
  - [x] There is a spec/facade test
  - [x] Runs a query
  - [x] Transforms results into a ruby object
- [x] There is a **Service**
  - [x] There is a spec/services test
  - [x] It makes an api call
  - [x] It parses the body
- [x] There is a **Poro**
  - [x] There is a spec/poros test
  - [x] There is an accessible attribute 'image'


### Story 5

Stylized views
When a visitor visits the home page

- [] Sees The content centered on the page.
- [] The title is predominat.
- [] The instructions and search bar are in a container that is of different color than the background.
