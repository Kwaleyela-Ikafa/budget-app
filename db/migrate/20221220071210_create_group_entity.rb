class CreateGroupEntity < ActiveRecord::Migration[7.0]
  def change
    create_table :group_entities do |t|
      t.references :Group, null: false, foreign_key: true
      t.references :Entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
