ActiveAdmin.register Genre do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :nom
  config.filters = false

  index do
    column :nom
  end

  # show do
  #   attributes_table :nom, :id
  # end

end
