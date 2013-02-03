require "spec_helper"

describe "StaticPages" do
let (:base_title) {"Ruby on Rails Tutorial Simple App"}
  describe "Home page" do
    it "should have the content Simple App" do
			visit "/static_pages/home"
			page.should have_content("Simple App")
    end
  end

	describe "help page" do
		it "should have the content of Help" do
			visit "/static_pages/help"
			page.should have_content("Help")
		end
	end
	describe "About us" do
		it "should have the content of about us" do
			visit "/static_pages/about"
			page.should have_content("About Us")
		end
	end
	describe "contact" do
		it "should have the content of contact" do
			visit "/static_pages/contact"
			page.should have_content("Contact")
		end
	end
	describe "title help" do
		it "should have a right title" do
			visit "/static_pages/help"
			page.should have_selector("title",
				:text => "#{base_title} | Help") 
		end
	end
	describe "help page h1" do
		it "should have the h1 selector " do
			visit "/static_pages/help"
			page.should have_selector("h1", :text => "Help")
		end
	end
	describe "title home" do
		it "should have a right title" do
			visit "/static_pages/home"
			page.should have_selector("title",
				:text => "#{base_title} | Home") 
		end
	end
	describe "home page h1" do
		it "should have the h1 selector " do
			visit "/static_pages/home"
			page.should have_selector("h1", :text => "Simple App")
		end
	end
	describe "title about us" do
		it "should have a right title" do
			visit "/static_pages/about"
			page.should have_selector("title",
				:text => "#{base_title} | About Us") 
		end
	end
	describe "about us page h1" do
		it "should have the h1 selector " do
			visit "/static_pages/about"
			page.should have_selector("h1", :text => "About Us")
		end
	end
	describe "contacts page h1" do
		it "should have h1 contact" do
			visit "/static_pages/contact"
			page.should have_selector("h1",:text=>"Contact")
		end
	end
	describe "contacts page title" do
		it "should have a title contact" do
			visit "/static_pages/contact"
			page.should have_selector("title", :text=>"#{base_title} | Contact")
		end
	end
	
end
