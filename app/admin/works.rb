ActiveAdmin.register Work, { :sort_order => :id_asc } do
  
   index do 
    column :id
    column :title
    column :front_show
    
    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
    f.input :title
    f.input :description, :input_html => {:class => "ckeditor"}
    f.input :logo1, :as => :file
    f.input :front_show, :as => :radio, :label => "Place in slider?"
    f.input :front_title
    f.input :logo2, :as => :file
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
