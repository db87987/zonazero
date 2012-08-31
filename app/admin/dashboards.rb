ActiveAdmin::Dashboards.build do
  section "Recent Works" do
    table_for Work.order("updated_at desc").limit(5) do
      column :title do |work|
       link_to work.title, [:admin, work]
      end
      column :updated_at
    end
    strong { link_to "View All Works", admin_works_path }
  end
  
  section "Recent Clients" do
    table_for Client.order("updated_at desc").limit(5) do
      column :title do |client|
       link_to client.title, [:admin, client]
      end
      column :updated_at
    end
    strong { link_to "View All Clients", admin_clients_path }
  end
  

end