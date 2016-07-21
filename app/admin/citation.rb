ActiveAdmin.register Citation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :note_id, :textePage, :description, :note_id

  filter :note_texte_auteur_nom,  as: :select, label: 'auteur', collection: proc {Auteur.all.map(&:nom)}
  filter :note_texte_abreviation, as: :select, label: 'texte',  collection: proc {Texte.all.map(&:abreviation)}
  filter :note
  filter :textePage
  filter :description_cont_all, as: :string, label: 'contient tous'

  index do
    column :note
    column :textePage
    column :description

    actions
  end
  show do
    attributes_table :note, :textePage, :description
  end

  controller do
    before_filter do
      unless params[:q].nil?
        unless params[:q][:description_cont_all].nil?
          desc = params[:q].delete(:description_cont_all)
          params[:q][:description_cont_all] = []
          desc.split(" ").each_with_index { |word, index|
            params[:q][:description_cont_all] << word
          }
        end
      end
    end
  end

end
