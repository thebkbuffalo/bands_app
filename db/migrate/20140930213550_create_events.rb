class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.boolean :alcohol_served, default: true
      t.references :venue, index: true

      t.timestamps
    end
  end
end
