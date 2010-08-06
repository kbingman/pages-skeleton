require "stories_helper"

class SiteTest < Test::Unit::TestCase
  story "As a developer I want to see the homepage so I know Monk is correctly installed" do
    scenario "A visitor goes to the homepage" do
      visit "/"

      assert_contain "Hello, world!"
    end 
       
    scenario "A visitor goes to the testpage" do
      visit "/test"

      assert_contain "This is a Test, This is Only a Test"
    end
  end    

end
