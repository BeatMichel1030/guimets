# == Schema Information
#
# Table name: citations
#
#  id          :integer          not null, primary key
#  texte_id    :integer
#  page        :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Citation < ActiveRecord::Base
  belongs_to :texte
  #ms = self.search(:titre_contains_all => "circulez voir".split(" "))
  #ms.all
end
