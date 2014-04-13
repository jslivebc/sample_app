require 'spec_helper'

describe "Static pages" do

  subject { page }
  describe "Home page" do
	before { visit root_path }

    #it "should have the content 'Sample App'" do
      #visit '/static_pages/home'
    #  expect(page).to have_content('Sample App')
    #end

    #it "should have the base title" do
      #visit '/static_pages/home'
    #  expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    #end

    #it "should not have a custom page title" do
    #  #visit '/static_pages/home'
    #  expect(page).not_to have_title('| Home')
    #end

    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('| Home') }		
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end
  
  
  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end  
  
  
  describe "Locate Us" do
  
    it "should have the content 'Locate Us'" do
	  visit '/static_pages/locateus'
	  expect(page).to have_content('Locate Us')
	end

   it "should have the title 'Locate Us'" do
	  visit '/static_pages/locateus'
	  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Locate Us")
	end
  end	 

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
 
end  
