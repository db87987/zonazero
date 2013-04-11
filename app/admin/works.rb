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
    f.input :logo1, :as => :file, :hint => ( f.object.new_record? || !f.object.logo1? ) ? nil : image_tag(f.object.logo1.url(:small))
    unless f.object.new_record? || !f.object.logo1?
   f.input :delete_logo1, :as => :boolean, :label => "destroy?"
    end
    f.input :front_show, :as => :radio
    f.input :front_title
    f.input :logo2, :as => :file, :hint => ( f.object.new_record? || !f.object.logo2? ) ? nil : image_tag(f.object.logo2.url(:small))
     unless f.object.new_record? || !f.object.logo2?
    f.input :delete_logo2, :as => :boolean, :label => "destroy?"
     end
  end
  f.buttons
 end
  
  show do
        attributes_table do
          row :title
          row :description do
            sanitize(work.description)
          end
          row :logo1 do |row|
            if row.logo1?
            image_tag(work.logo1.url(:small))
          end
          end
          row :logo2 do |row|
            if row.logo2?
            image_tag(work.logo2.url(:small))
          end
          end
        end
      end
  
end
