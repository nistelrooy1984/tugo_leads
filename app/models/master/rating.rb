# frozen_string_literal: true

# == Schema Information
#
# Table name: master_ratings
#
#  id(ID)                    :bigint           not null, primary key
#  is_usable(Usable)         :boolean          not null
#  name(Name)                :string           not null
#  order(Order)              :integer          not null
#  created_at(Created At)    :datetime         not null
#  updated_at(Updated At)    :datetime         not null
#

module Master
  class Rating < ApplicationMasterRecord
    self.table_name = 'master_ratings'

    has_many :leads, foreign_key: 'master_rating_id'
  end
end
