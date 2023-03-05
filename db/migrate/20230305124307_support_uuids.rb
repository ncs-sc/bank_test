# frozen_string_literal: true

# Adds UUID support to Postgres database
class SupportUuids < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  end
end
