ActiveAdmin.register Auteur do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  config.sort_order = 'nom_asc'

  permit_params :nom, :libelle
  filter :nom
  filter :libelle

  index do
    column :nom
    column :libelle

    actions
  end

  show do
    attributes_table :nom, :libelle, :id
  end

end
