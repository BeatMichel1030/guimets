# == Schema Information
#
# Table name: notes
#
#  id          :integer          not null, primary key
#  texte_id    :integer          not null
#  description :string
#  cahier      :integer          not null
#  page        :integer          not null
#

class Note < ActiveRecord::Base

  belongs_to :texte
  has_many   :citations

  default_scope -> {joins(:texte).order('textes.abreviation ASC', 'cahier ASC', 'page ASC')}

  accepts_nested_attributes_for :citations

  def name
    return texte.abreviation + ' ' + cahier.to_s + ':' + page.to_s
  end

end
