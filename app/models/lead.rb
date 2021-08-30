# frozen_string_literal: true

# == Schema Information
#
# Table name: leads
#
#  id(ID)
#  firstname(First Name)
#  lastname(Last Name)
#  phone(Phone)
#  email(Email)
#  master_status_id(Lead Status)
#  master_lead_source_id(Lead Source)
#  master_industry_id(Industry)
#  master_rating_id(Rating)
#  address(Address)
#  master_ward_id(Ward)
#  master_district_id(District)
#  master_province_id(Province)
#  master_country_id(Country)
#  description(Description Details)
#  creator_id(Created By)
#  owner_id(Assigned To)
#  modified_by_id(Modified By)
#  master_leadsource_id(Lead Source)
#  created_at(Created At)
#  updated_at(Updated At)
#
# Indexes
#
# Foreign Keys
#
class Lead < ApplicationRecord
  belongs_to :master_status, class_name: 'Master::Status', optional: true
  belongs_to :master_lead_source, class_name: 'Master::LeadSource', optional: true
  belongs_to :master_industry, class_name: 'Master::Industry', optional: true
  belongs_to :master_rating, class_name: 'Master::Rating', optional: true

  scope :where_first_name, ->(first_name) { where("first_name ILIKE ?", "%#{first_name}%") if first_name.present? }
  scope :where_last_name, ->(last_name) { where("last_name ILIKE ?", "%#{last_name}%") if last_name.present? }
  scope :where_phone, ->(phone) { where("phone ILIKE ?", "%#{phone}%") if phone.present? }
  scope :where_email, ->(email) { where("email ILIKE ?", "%#{email}%") if email.present? }
  scope :where_owner_id, ->(owner_id) { where(owner_id: owner_id) if owner_id.present? }
  scope :where_by_subordinate_users, ->(user_ids) { where(owner_id: user_ids) if user_ids.present? }
end
