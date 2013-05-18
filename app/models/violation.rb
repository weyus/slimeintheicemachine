class Violation < ActiveRecord::Base
end

# == Schema Information
#
# Table name: violations
#
#  id                 :integer          not null, primary key
#  facility_id        :integer
#  name               :string(255)
#  risk               :string(255)
#  address            :string(255)
#  facility_type      :string(255)
#  inspected_on       :datetime
#  inspector          :string(255)
#  site_type          :string(255)
#  violation_code     :string(255)
#  violation_weight   :integer
#  violation_comments :string(255)
#  correct_by_date    :datetime
#  score              :integer
#

