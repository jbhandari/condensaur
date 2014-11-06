class AddNullFalseToUrls < ActiveRecord::Migration
  def change
    change_column :urls, :url, :string, null:false
    change_column :urls, :token, :string, null:false
  end
end
