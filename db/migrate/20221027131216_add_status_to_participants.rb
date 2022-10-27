class AddStatusToParticipants < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :status, :string
  end
end
