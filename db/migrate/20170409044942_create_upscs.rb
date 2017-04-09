class CreateUpscs < ActiveRecord::Migration[5.0]
  def change
    create_table :upscs do |t|
      t.date :postdate
      t.string :post
      t.string :education
      t.date :lastdate
      t.string :more

      t.timestamps
    end
  end
end
