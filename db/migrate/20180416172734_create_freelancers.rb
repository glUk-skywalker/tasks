class CreateFreelancers < ActiveRecord::Migration[5.1]
  def change
    create_table :freelancers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :message

      t.timestamps
    end
  end
end
