ActiveAdmin.register Book do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  
  permit_params :title, :description, :author_id, category_ids: []
  
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :author_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  index do
    selectable_column
    id_column
    column :title
    column :description
    column :author
    column :categories do |book|
      book.categories.map { |category| category.name }.join(", ")
    end
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Book Detail" do
      f.input :author
      f.input :title
      f.input :description
      f.input :categories, as: :select, collection: Category.all, multiple: true
    end
    f.actions
  end

  filter :author
  filter :title
  filter :description
  filter :created_at
  filter :updated_at
  
end
