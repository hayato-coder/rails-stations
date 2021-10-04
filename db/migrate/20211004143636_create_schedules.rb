class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.references :movie, foreign_key: true, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.timestamps
    end
  end
end
