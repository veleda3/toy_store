class CreateSpreeNewsletterSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :spree_newsletter_subscriptions do |t|
      t.string :email
      t.boolean :active, default: true
      t.text :message

      t.timestamps
    end
  end
end
