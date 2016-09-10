class CreateCreateJoinTableDevicesUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :devices, :users do |t|
    end
  end
end
