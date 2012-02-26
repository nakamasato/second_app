require 'spec_helper'

describe "StaticPages" do
  let(:base_title){"Ruby on Rails Tutorial Sample App"}
  describe "GET /static_pages" do
    it "should have the content 'Home'" do
      visit root_path
      page.should have_selector('h1', :text => "Sample App")
    end
    it "should have the right title" do 
      visit root_path
      page.should have_selector('title', :text =>"#{base_title} | Home")
    end
  end
  describe "help page" do
    it "should have the content 'help'" do
      visit help_path
      page.should have_content('Help')
    end
    it "should have the right title" do 
      visit help_path
      page.should have_selector('title', :text =>"Ruby on Rails Tutorial Sample App | Help")
    end
  end
  describe "About page" do
    it "should have the content 'about'" do
      visit about_path
      page.should have_content('About')
    end
    it "should have the right title" do 
      visit about_path
      page.should have_selector('title', :text =>"Ruby on Rails Tutorial Sample App | About")
    end
  end
  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => "Contact")
    end
    it "should have the right title" do 
      visit contact_path
      page.should have_selector('title', :text =>"#{base_title} | Contact")
    end
  end
end
