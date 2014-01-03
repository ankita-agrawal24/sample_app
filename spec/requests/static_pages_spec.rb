require 'spec_helper'

describe "Static pages" do
  describe "Home Page"do
    it "should have content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    
    it "should have base title " do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App ")
    end
    
    it "should not have custom page title " do
      visit '/static_pages/home'
      expect(page).not_to have_title(" | Home ")
    end
    
  end
  
  describe "Help Page"do
    it "should have content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
    
    
  end
  
   describe "About Page"do
    it "should have content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
  
   it "should have title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
end
