class CreateGalerias < ActiveRecord::Migration
  def self.up
    create_table :galerias do |t|
      t.string :titulo
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :galerias
  end
end
