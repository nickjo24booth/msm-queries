# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
#Don't need to "require Director" in order to use in other parts of application.
#Rails does that for us automatically.

#Each record in the database table represents an instance of this class we've created.
#AMAZING!

end
