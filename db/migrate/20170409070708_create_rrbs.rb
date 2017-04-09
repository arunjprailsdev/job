class CreateRrbs < ActiveRecord::Migration[5.0]
  def change
    create_table :rrbs do |t|
      t.date :PostDate
      t.string :PostName
      t.text :Description
      t.integer :TotalPost
      t.text :VacancyDetails
      t.text :AgeLimit
      t.string :EducationalQualification
      t.string :SelectionProcess
      t.string :ApplicationFee
      t.text :Apply
      t.timestamps
    end
  end
end
