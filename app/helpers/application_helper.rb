module ApplicationHelper

	def to_miles(meters)
		meters.present? ? '%.2f' % (meters * 0.000621371) : "NA"
	end
end
