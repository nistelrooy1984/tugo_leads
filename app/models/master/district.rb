# frozen_string_literal: true

# == Schema Information
#
# Table name: master_districts
#
#  id(ID)                    :bigint           not null, primary key
#  is_usable(Usable)         :boolean          not null
#  name(Name)                :string           not null
#  master_province_id        :bigint           not null
#  order(Order)              :integer          not null
#  created_at(Created At)    :datetime         not null
#  updated_at(Updated At)    :datetime         not null
#

module Master
  class District < ApplicationMasterRecord
    self.table_name = 'master_districts'
  end
end