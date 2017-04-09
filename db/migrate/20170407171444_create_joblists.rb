class CreateJoblists < ActiveRecord::Migration[5.0]
  def change
    create_table :joblists do |t|
      t.date :PostDate
      t.string :JobTitle
      t.string :Qualification
      t.date :LastDate
      t.string :MoreInfo

      t.timestamps
    end
  end
end
