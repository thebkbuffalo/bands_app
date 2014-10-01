class CreateBandEvents < ActiveRecord::Migration
  def change
    create_table :band_events do |t|
      t.references :band, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
