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
  # default_scope {order('cahier ASC, page ASC')}

  belongs_to :texte
  has_many   :citations

  accepts_nested_attributes_for :citations

  def name
    return texte.abreviation + ' ' + cahier.to_s + ':' + page.to_s
  end

end
