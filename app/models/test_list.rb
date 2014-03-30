class TestList < ActiveRestClient::Base
  proxy RocketPantsUnwrapper

  get :all_the_things,  "/1/lists"
end