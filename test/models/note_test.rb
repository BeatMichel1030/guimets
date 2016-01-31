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

require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
