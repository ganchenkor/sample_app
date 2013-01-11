require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	
	describe "Home Page" do
		it "should have the h1 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers

      visit '/static_pages/home'
      page.should have_selector('h1', :text =>'Sample App')
  		
    end
    it "should have the base title" do
            visit '/static_pages/home'
            page.should have_selector('title', 
                      :text => "#{base_title}")     
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'      
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help Page" do
		it "should have the h1 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers

      visit '/static_pages/help'
      page.should have_selector('h1', :text =>'Help')
  	end
        it "should have the right title" do
            visit '/static_pages/help'
            page.should have_selector('title', 
                      :text => "#{base_title}")     
    end
  end

  describe "About Page" do
		it "should have the h1 'About Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers

      visit '/static_pages/about'
      page.should have_selector('h1', :text =>'About Us')
  	end
        it "should have the right title" do
            visit '/static_pages/about'
            page.should have_selector('title', 
                      :text => "#{base_title}")     
    end
  end

  describe "Contact" do
    it "should have the h1 'Contact'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers

      visit '/static_pages/contact'
      page.should have_selector('h1', :text =>'Contact')
    end
        it "should have the right title" do
            visit '/static_pages/contact'
            page.should have_selector('title', 
                      :text => "#{base_title}")     
    end
  end


end

