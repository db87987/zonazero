ActiveAdmin.register Work do
  
   index do 
    column :id, :order => "id ASC"
    column :title
    
    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
    f.input :title
    f.input :description
    f.input :logo1, :as => :file
    f.input :logo2, :as => :file
  end
  f.buttons
 end
  
  show do
        attributes_table do
          row :title
          row :description
          row :logo1 do
            image_tag(work.logo1.url)
          end
          row :logo2 do
            image_tag(work.logo2.url)
          end
        end
      end
  
end
