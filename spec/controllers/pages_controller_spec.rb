require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'                    # calls pages(it is a 'PagesController)/home
      response.should be_success    # should come back 200
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => " | Home" )
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => " | Contact" )
    end
  end
  
  describe "get 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => " | About" )
    end
  end
  
  describe "get 'poo'" do
    it "should be successful" do
      get 'poo'
      response.should be_success
    end
    it "should have the right title" do
      get 'poo'
      response.should have_selector("title", :content => " | Poo" )
    end
  end

end
