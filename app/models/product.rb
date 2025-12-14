class Product < ApplicationRecord
    # The code of file /products/notifications.rb has been included here for execution
    include Notifications

    has_one_attached :featured_image
    has_rich_text :description

    # Validations on product fields
    validates :name, presence: true
    validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }
end
