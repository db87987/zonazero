ActiveAdmin.register Award, { :sort_order => :id_asc } do
     index do 
      column :id
      column :title

      default_actions
    end

    form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Details" do
      f.input :title
      f.input :description
      f.input :logo1, :as => :file
    end
    f.buttons
   end

    show do
          attributes_table do
            row :title
            row :description
            row :logo1 do
              image_tag(award.logo1.url)
            end
          end
        end

  end