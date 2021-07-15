# frozen_string_literal: true

module Leads
  class GetAllMasterPresenter < PresenterBase
    def initialize(all_master)
      @all_master = all_master
    end

    def generate_response
      Tugo::Leads::V1::AllMasterResponse.new(
        countries: @all_master[:countries]&.each_with_object([]) do |country, arr|
          arr << Tugo::Leads::V1::Country.new(
            id: proto_int64(country.id),
            name: proto_string(country.name),
            order: proto_int64(country.order),
            is_usable: proto_bool(country.is_usable),
            created_at: proto_string(country.created_at),
            updated_at: proto_string(country.updated_at)
          )
        end,

        provinces: @all_master[:provinces]&.each_with_object([]) do |province, arr|
          arr << Tugo::Leads::V1::Province.new(
            id: proto_int64(province.id),
            name: proto_string(province.name),
            master_country_id:  proto_int64(province.master_country_id),
            order: proto_int64(province.order),
            is_usable: proto_bool(province.is_usable),
            created_at: proto_string(province.created_at),
            updated_at: proto_string(province.updated_at)
          )
        end,

        districts: @all_master[:districts]&.each_with_object([]) do |district, arr|
          arr << Tugo::Leads::V1::District.new(
            id: proto_int64(district.id),
            name: proto_string(district.name),
            master_province_id:  proto_int64(district.master_province_id),
            order: proto_int64(district.order),
            is_usable: proto_bool(district.is_usable),
            created_at: proto_string(district.created_at),
            updated_at: proto_string(district.updated_at)
          )
        end,

        wards: @all_master[:wards]&.each_with_object([]) do |ward, arr|
          arr << Tugo::Leads::V1::Ward.new(
            id: proto_int64(ward.id),
            name: proto_string(ward.name),
            master_district_id:  proto_int64(ward.master_district_id),
            order: proto_int64(ward.order),
            is_usable: proto_bool(ward.is_usable),
            created_at: proto_string(ward.created_at),
            updated_at: proto_string(ward.updated_at)
        )
        end
      )
    end
  end
end
