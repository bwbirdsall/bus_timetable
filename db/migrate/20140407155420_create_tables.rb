class CreateTables < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.column :name, :string
    end

    create_table :stations do |t|
      t.column :name, :string
      t.column :address, :string
    end

    create_table :stops do |t|
      t.column :line_id, :int
      t.column :station_id, :int
    end
  end
end
