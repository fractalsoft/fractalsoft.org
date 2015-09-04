module Globalize
  module ActiveRecord
    module Migration
      # Using globalize with UUID
      class Migrator
        def primary_key_type
          column_type(model.primary_key).to_sym
        end

        # rubocop:disable all
        def create_translation_table
          connection.create_table(translations_table_name, id: primary_key_type) do |t|
            t.references table_name.sub(/^#{table_name_prefix}/, '').singularize, null: false, type: primary_key_type
            t.string :locale, null: false
            t.timestamps null: false
          end
        end
        # rubocop:enable all
      end
    end
  end
end
