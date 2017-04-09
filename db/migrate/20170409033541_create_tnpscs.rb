class CreateTnpscs < ActiveRecord::Migration[5.0]
  def change
    create_table :tnpscs do |t|
      t.string :Post
      t.string :Qualification

      t.timestamps
    end
  end
end
