class CreateSliders < ActiveRecord::Migration
  def self.up
    create_table :sliders do |t|
      t.string :titulo

      t.timestamps
    end
  end

  def self.down
    drop_table :sliders
  end
end
