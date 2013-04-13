class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include SessionsHelper

  before_filter do 
  	@listHeader = { "Home" => home_path, "Profil" => current_user, "Description" => description_path,
                    "Stream" => stream_path, "Konami Code" => konami_path,
                   }

    @listFooter = { "Sources" => sources_path, "Contact" => contact_path,
                    "Capcom" => 'http://www.capcom.com/', "Hadouken !" => 'http://en.wikipedia.org/wiki/Hadouken_(Street_Fighter)#Hadouken' }
  end
end