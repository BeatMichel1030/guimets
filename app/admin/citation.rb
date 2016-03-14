ActiveAdmin.register Citation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :note_id, :textePage, :description  #, :all_desc

  filter :note

  filter :description_cont_all, as: :string, label: 'contient tous'
  # filter :description, as: :string, label: 'contient tous', filters: [:cont_all]

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
