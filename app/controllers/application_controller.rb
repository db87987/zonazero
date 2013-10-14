class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #before_filter :miniprofiler
  
  # private
  # def miniprofiler
  #   if admin_user_signed_in?
  #   logger.info 'Profiling'
  #   Rack::MiniProfiler.authorize_request
  #   # Rack::MiniProfiler.config.storage = Rack::MiniProfiler::MemoryStore
  #   end
  # end
    
end
