Trestle.resource(:categories) do
  menu do
    item :categories, icon: "fa fa-list"
  end

  # scope :all, default: true
  scope(:all, default: true) { Category.where.not(parent_id: nil) }

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :name
    # column :parent_id
    # column :parent_id, ->(parent) { parent.name }
    column :parent_id, ->(current_record) { current_record.parent_id&.name }
    # column :parent, &:name
    # column :parent_id do |parent|
    #   status_tag(icon("fa fa-check"), :success) unless parent.parent_id?
    # end
    actions
  end


  # Customize the form fields shown on the new/edit views.
  #
  form do |category|

    text_field :name
    select :parent_id, Category.all, include_blank: 'Parent', label: false

    # tab 1 do
    #   text_field :name
    # end

    # if category.new_record?
    #   text_field :name
    # end

    # row do
    #   col(xs: 6) { datetime_field :updated_at }
    #   col(xs: 6) { datetime_field :created_at }
    # end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:category).permit(:name, ...)
  # end
end
