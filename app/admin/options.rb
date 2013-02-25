ActiveAdmin.register Option do
  
   index do 
    column :title
    column :category_id do |column|
      Category.where(:id => column.category_id).first.title
    end

    default_actions
  end
  
  
  
  form do |f|
     f.inputs do
       f.input :title
       f.input :category_id, :as => :select, :collection => Category.all
     end
     f.buttons
   end
   
    show do
          attributes_table do
            row :title
            row :category_id
          end
        end
   
   
   
end
