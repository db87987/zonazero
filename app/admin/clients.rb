ActiveAdmin.register Client do
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

end
