# frozen_string_literal: true

# == Schema Information
#
# Table name: master_countries
#
#  id(ID)                    :bigint           not null, primary key
#  is_usable(Usable)         :boolean          not null
#  name(Name)                :string           not null
#  order(Order)              :integer          not null
#  created_at(Created At)    :datetime         not null
#  updated_at(Updated At)    :datetime         not null
#

module Master
  class Country < ApplicationMasterRecord
    self.table_name = 'master_countries'
  end
end