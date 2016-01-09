ActiveAdmin.register Note do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

permit_params :texte_id, :cahier, :page, :description,
              citations_attributes: [:id, :textePage, :description]

filter :texte
filter :texte_titre_cont
filter :texte_auteur_nom, as: :select, label: 'auteur', collection: proc {Auteur.all.map(&:nom)}

index do
  column :texte
  column :cahier
  column :page
  column :description

  actions
end

show do
  attributes_table :texte, :cahier, :page, :description, :id
end

# voici un form qui marche bien:
form do |f|
  f.inputs 'Details' do
    f.input :texte
    f.input :cahier
    f.input :page
    f.input :description
  end
  f.inputs do
    f.has_many :citations, heading: 'Citations', allow_destroy: true, new_record: true do |a|
      a.input :textePage
      a.input :description
    end
  end

  f.actions
end

end
