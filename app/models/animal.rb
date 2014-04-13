class Animal < ActiveRecord::Base
	belongs_to :status, :class_name => Status, :foreign_key => :status_id
	belongs_to :sex, :class_name => Sex, :foreign_key => :sex_id
	belongs_to :quality, :class_name => Quality, :foreign_key => :quality_id
	belongs_to :origin, :class_name => Origin, :foreign_key => :origin_id
	belongs_to :source, :class_name => Source, :foreign_key => :source_id
	belongs_to :for_sale_status, :class_name => ForSaleStatus, :foreign_key => :for_sale_status_id


end
