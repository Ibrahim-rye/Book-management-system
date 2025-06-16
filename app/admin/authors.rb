ActiveAdmin.register Author do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  
  permit_params :name, :bio
  
  # or
  #
  # permit_params do
  #   permitted = [:name, :bio]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  index do
    selectable_column
    id_column
    column :name
    column :bio
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :bio
    end
    f.actions
  end

  filter :name
  filter :bio
  filter :created_at
  filter :updated_at

  show do
    attributes_table do
      row :name
      row :bio
    end

    panel "Books by Author" do
      table_for author.books do
        column :title
        column :description
      end
    end
  end
  
end
