class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.boolean :recording
      t.float :uptime
      t.references :device, foreign_key: true

      t.timestamps
    end
  end
end
