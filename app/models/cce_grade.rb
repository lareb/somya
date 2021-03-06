# == Schema Information
#
# Table name: cce_grades
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  grade_point      :float(24)
#  cce_grade_set_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

#Fedena
#Copyright 2011 Foradian Technologies Private Limited
#
#This product includes software developed at
#Project Fedena - http://www.projectfedena.org/
#
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.
class CceGrade < ActiveRecord::Base
#  has_many      :assessment_scores
  belongs_to    :cce_grade_set
  validates_presence_of :name
  validates_presence_of :grade_point
  validates_numericality_of :grade_point
end
