ActiveAdmin.register Work, { :sort_order => :id_asc } do
  config.batch_actions = false
  config.clear_sidebar_sections!
  
   index do 
    column :title
    column :front_show
    
    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
    f.input :title
    f.input :description, :as => :ckeditor, :label => false
    f.input :logo1, :as => :file, :hint => "138x138px"
    f.input :front_show, :as => :radio
    f.input :front_title
    f.input :logo2, :as => :file, :hint => "940x906px"
  end
  f.buttons
 end
  
  show do
        attributes_table do
          row :title
          row :description do
            sanitize(work.description)
          end
          row :logo1 do
            image_tag(work.logo1.url)
          end
          row :logo2 do
            image_tag(work.logo2.url)
          end
        end
      end
  
end
