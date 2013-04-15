module Mercury
  module Authentication

    def can_edit?
     if admin_user_signed_in?
       true
     else 
       false
     end
   end

 end
end