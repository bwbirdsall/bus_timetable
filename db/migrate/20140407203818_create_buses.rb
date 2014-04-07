class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.column :name, :string
      t.column :line_id, :int
    end

    create_table :busstops do |t|
      t.column :bus_id, :int
      t.column :stop_id, :int
      t.column :arrival_time, :time
    end
  end
end
