class Product < ActiveRecord::Base
	validates :title, :description, :image_url, :presence => 
			{ :message => "не повинно бути порожнім" }
 	validates :title, uniqueness: {message: "вже викоритовується"}
	validates :image_url, allow_blank: true, format: {
				with: %r{\.(gif|jpg|png)\Z}i,
				message: 'URL должен указывать на изображение формата GIF, JPG или PNG.'
				}
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
