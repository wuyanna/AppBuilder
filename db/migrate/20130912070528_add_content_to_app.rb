class AddContentToApp < ActiveRecord::Migration
  def change
    add_column :apps, :content, :string
  end
end
