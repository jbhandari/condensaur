class ChangeUrlNameToOriginal < ActiveRecord::Migration
  def change
    rename_column :urls, :url, :original_url
  end
end
