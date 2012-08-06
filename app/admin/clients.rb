ActiveAdmin.register Client do


   index do
    column :title
    column :point1
    column :point2
    column :point3
    column :point4
    column :point5
    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
    f.input :title
    f.input :point1
    f.input :point2
    f.input :point3
    f.input :point4
    f.input :point5
    f.input :logo1, :as => :file
    f.input :logo2, :as => :file
  end
  f.buttons
 end




 show do
      attributes_table do
        row :title
        row :point1
        row :point2
        row :point3
        row :point4
        row :point5
        row :logo1 do
          image_tag(client.logo1.url)
        end
        row :logo2 do
          image_tag(client.logo2.url)
        end
      end
      active_admin_comments
    end

end
