class CreateMarkers < ActiveRecord::Migration[5.1]
  def change
    create_table :markers do |t|
      t.numeric :lat
      t.numeric :lng

      t.timestamps
    end
  end
end
