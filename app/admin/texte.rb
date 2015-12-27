ActiveAdmin.register Texte do

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
  config.sort_order = 'abreviation_asc'
  permit_params :abreviation, :auteur_id, :titre, :genre_id, :editeur_id,
                :annee, :journal, :statut, :notesCahier, :notesPage,
                :dans, :titre_livre, :volume, :numero, :pages, :remarque
  filter :auteur
  filter :titre
  filter :notesCahier
  filter :genre
  filter :actif, as: :check_boxes
  filter :dans

  # controller do
  #   def find_resource
  #     Texte.where(id = 1000)
  #   end
  # end

  index do
    column :abreviation
    column :auteur
    column :notesCahier
    column :notesPage
    column :titre, sortable: false
    actions
  end

end
