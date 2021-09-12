# frozen_string_literal: true

module Leads
  class MastersRequestParams < TugoCommon::RequestParamsBase
    attribute :table_name, :string

    validate :validate_table_name

    def initialize(params)
      super(
        table_name: params.table_name&.value
      )
    end

    def validate_table_name
      Object.const_get("Master::#{table_name.classify}")
    rescue NameError
      errors.add(:table_name, :undefined_table_name)
    end
  end
end
