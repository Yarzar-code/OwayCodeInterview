# OwayCodeInterview
  Code Interview (Oway)
    RESTful routes for cab resource.
    Custom routes for all cabs and one cab information via postman API.
    Excel file download link for all cab's information

- Ruby version
  ruby 2.5.3p105

- Rails version
  rails 2.5.3

API
Require authorization token to get cab information
  key => Authorization
  value => User.api_token

To create default user
  rake db:seed