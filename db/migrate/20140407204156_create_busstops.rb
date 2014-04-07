class CreateBusstops < ActiveRecord::Migration
  def change
    create_table :busstops do |t|
      t.column :bus_id, :int
      t.column :stop_id, :int
      t.column :arrival_time, :time
    end
  end
end
