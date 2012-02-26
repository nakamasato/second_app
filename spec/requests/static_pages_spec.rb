require 'spec_helper'

describe "StaticPages" do
  let(:base_title){"Ruby on Rails Tutorial Sample App"}
  describe "GET /static_pages" do
    before { visit root_path }
    it { page.should have_selector('h1', :text => "Sample App") }
    it { page.should have_selector('title', :text =>"#{base_title} | Home") }
  end
  describe "help page" do
    before { visit help_path }
    it { page.should have_selector('h1', :text => "Help") }
    it { page.should have_selector('title', :text =>"Ruby on Rails Tutorial Sample App | Help") }
  end
  describe "About page" do
    before { visit about_path }
    it { page.should have_content('About') }
    it { page.should have_selector('title', :text =>"Ruby on Rails Tutorial Sample App | About") }
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
