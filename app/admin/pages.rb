ActiveAdmin.register Page do
  config.batch_actions = false
  config.clear_sidebar_sections!
  
   index do 
    column :title
    column :description do |column|
      truncate(strip_tags(column.description), length: 800).html_safe
    end
    
    default_actions
  end
  
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
    f.input :title
    f.input :description, :as => :ckeditor, :input_html => { :ckeditor => { :height => 400 } }, :label => false
  end
  f.buttons
 end
 
 
 show do
   attributes_table do
         row :title
         row :description do |row|
           row.description.html_safe
         end
   end
 end
end
