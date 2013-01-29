require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Simple App'" do
			visit '/static_pages/home'
			page.should have_content('Simple App')
    end
  end

	describe "help page" do
		it "should have the content of Help" do
			visit "/static_pages/help"
			page.should have_content('Help')
		end
	end
	describe "About us" do
		it "should have the content of about us" do
			visit "/static_pages/about"
			page.should have_content('About Us')
		end
	end
	describe "title help" do
		it "should have a right title" do
			visit "/static_pages/help"
			page.should have_selector('title',
				:text => 'Ruby on Rails Tutorial Simple App | Help') 
		end
	end
	describe "help page h1" do
		it "should have the h1 selector " do
			visit "/static_pages/help"
			page.should have_selector('h1', :text => "Help")
		end
	end
	describe "title home" do
		it "should have a right title" do
			visit "/static_pages/home"
			page.should have_selector('title',
				:text => 'Ruby on Rails Tutorial Simple App | Home') 
		end
	end
	describe "home page h1" do
		it "should have the h1 selector " do
			visit "/static_pages/home"
			page.should have_selector('h1', :text => "Simple App")
		end
	end
	describe "title about us" do
		it "should have a right title" do
			visit "/static_pages/about"
			page.should have_selector('title',
				:text => 'Ruby on Rails Tutorial Simple App | About Us') 
		end
	end
	describe "about us page h1" do
		it "should have the h1 selector " do
			visit "/static_pages/about"
			page.should have_selector('h1', :text => "About Us")
		end
	end
end
