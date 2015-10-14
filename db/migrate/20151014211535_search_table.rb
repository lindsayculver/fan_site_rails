class SearchTable < ActiveRecord::Migration
  def self.up
    ActiveRecord::Base.connection.execute <<-SQL
    CREATE VIEW searches AS
      SELECT  gears.id AS searchable_id, gears.model AS term,
              CAST ('Author' AS varchar) AS searchable_type
      FROM gears
    SQL
  end

  def self.down
    ActiveRecord::Base.connection.execute <<-SQL
      DROP VIEW searches
    SQL
  end
end
