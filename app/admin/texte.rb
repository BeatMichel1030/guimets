ActiveAdmin.register Texte do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  config.sort_order = 'abreviation_asc'
  permit_params :abreviation, :auteur_id, :titre, :genre_id, :editeur_id,
                :annee, :journal, :actif, :notesCahier, :notesPage,
                :texte_id, :titre_livre, :volume, :numero, :pages, :remarque
  filter :auteur
  filter :titre
  filter :abreviation_eq, label: 'abréviation'
  filter :genre
  filter :texte
  filter :journal
  filter :notesCahier
  filter :actif, as: :check_boxes

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

  show do
    attributes_table :titre, :auteur, :genre, :texte, :editeur, :annee, :notesCahier, :notesPage, :remarque,
                     :titre_livre, :journal, :volume, :numero, :pages, :abreviation, :id, :actif


  #   panel texte.titre, id: "my-panel" do
  #    # span "Inside the panel"
  #     div do
  #       text_node texte.abreviation
  #       em(" auteur: ")
  #       text_node texte.auteur.libelle
  #       text_node " genre: "
  #       text_node texte.genre.nom
  #     end
  #     div do
  #       text_node i(' cahier: ')
  #       text_node texte.notesCahier
  #       text_node " page:"
  #       text_node texte.notesPage
  #     end
  #     div do
  #       text_node " éditeur: "
  #       text_node texte.editeur.nom
  #       text_node " année:"
  #       text_node texte.annee
  #     end
  #
  #   end
  end
end
