class Property < ActiveRecord::Base
    TYPE_OPTIONS = %w[casa apt local solar]
  attr_accessible :picture_ids, :bathrooms, :description, :location, :mts, :price, :purpose, :rooms, :title, :property_id, :parkingspace, :picture_attributes

  has_many :pictures, :dependent => :destroy

  validates :bathrooms, :description, :location, :mts, :price, :purpose, :rooms, :title, :presence => true
  validates_length_of :description, :minimum => 5
  validates_length_of :description, :maximum => 1000
  validates_numericality_of :price, :rooms, :mts, :bathrooms

  def humanize_price
    "RD$ #{ActionController::Base.helpers.number_to_currency(self.price, :precision => 0)}"
  end

  def normalize_meters
    "#{self.mts.to_i}"
  end

end

#options_from_collection_for_select(Property.TYPE_OPTIONS)
