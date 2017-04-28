class CreateDisplays < ActiveRecord::Migration[5.1]
  def change
    create_table :displays do |t|
      t.string :caption

      t.timestamps
    end
  end
end
