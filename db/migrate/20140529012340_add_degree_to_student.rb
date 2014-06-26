class AddDegreeToStudent < ActiveRecord::Migration
  def change
    add_column :students, :degree, :string
  end
end
