class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.string :participants
      t.string :string
      t.string :role
      t.string :string
      t.string :session
      t.string :references

      t.timestamps
    end
  end
end
