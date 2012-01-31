require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "should have the content 'Home'" do
      visit '/static_pages/home'
      page.should have_content('Home')
    end
    it "should have the right title" do 
      visit '/static_pages/home'
      page.should have_selector('title', :text =>"Ruby on Rails Tutorial Sample App | Home")
    end
  end
  describe "help page" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the right title" do 
      visit '/static_pages/help'
      page.should have_selector('title', :text =>"Ruby on Rails Tutorial Sample App | Help")
    end
  end
  describe "About page" do
    it "should have the content 'about'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    it "should have the right title" do 
      visit '/static_pages/about'
      page.should have_selector('title', :text =>"Ruby on Rails Tutorial Sample App | About")
    end
  end
end
