class ChangeUserIdColumnName < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.integer :visiting_user_id, presence: true
      t.string :visited_short_url, presence: true

      t.timestamps
    end

    rename_column :shortened_urls, :user_id, :submitter_id
    
  end

end