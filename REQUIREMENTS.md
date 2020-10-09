This app is an exercise to practice consuming an api from giphy.

## Requirements

1. Set up testing suite to include rspec, shoulda-matchers, rubocop, and simplicov
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

- [] There is navigation bar on top with a link to the home page

### Story 3

After the visitor presses submit in the search form in the home page gets redirected to the index page.
In the 'search/index' page the visitor

- [] Sees the search words as a heading.
- [] Sees a sample of 10 gifs matching the query created.

### Story 4

Stylized views
When a visitor visits the home page

- [] Sees The content centered on the page.
- [] The title is predominat.
- [] The instructions and search bar are in a container that is of different color than the background.
