ActiveAdmin.register Award, { :sort_order => :id_asc } do
  config.batch_actions = false
  config.clear_sidebar_sections!
  
  
     index do 
      column :title

      default_actions
    end

    form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Details" do
      
      years = ((yr=Date.current.year)-12..yr).to_a.reverse
      
      f.input :title
      f.input :year, :as => :select, :collection => years
      f.input :description, :input_html => { :rows => 3 }
      f.input :year1, :as => :select, :collection => years
      f.input :description1, :input_html => { :rows => 3 }
      f.input :year2, :as => :select, :collection => years
      f.input :description2, :input_html => { :rows => 3 }
      f.input :year3, :as => :select, :collection => years
      f.input :description3, :input_html => { :rows => 3 }
      f.input :logo1, :as => :file, :hint => ( f.object.new_record? || f.object.logo1.nil? ) ? "100x100px" : image_tag(f.object.logo1.url(:small))+"100x100px"

        
        
        
        
      
      
      
      
      
      
    end
    f.buttons
   end

    show do
          attributes_table do
            row :title
            row :year
            row :description
            row :year1
            row :description1
            row :year2
            row :description2
            row :logo1 do
              image_tag(award.logo1.url(:small))
            end
          end
        end

  end