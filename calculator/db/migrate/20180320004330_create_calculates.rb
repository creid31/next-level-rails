class CreateCalculates < ActiveRecord::Migration[5.1]
  def change
    create_table :calculates do |t|

      t.timestamps
    end
  end
end
