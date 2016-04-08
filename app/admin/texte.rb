ActiveAdmin.register Texte do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  config.sort_order = 'abreviation_asc'
  permit_params :abreviation, :auteur_id, :titre, :genre_id, :editeur_id,
                :annee, :journal, :actif, :texte_id, :titre_livre,
                :volume, :numero, :pages, :remarque
  filter :auteur
  filter :titre
  filter :genre
  filter :texte
  filter :actif, as: :check_boxes

  index do
    column :abreviation
    column :auteur
    column :titre, sortable: false
    actions
  end

  show do
    attributes_table :titre, :auteur, :genre, :texte, :editeur, :annee, :remarque,
                     :titre_livre, :journal, :volume, :numero, :pages, :abreviation, :id, :actif


  end
end
