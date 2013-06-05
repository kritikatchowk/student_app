class Student < ActiveRecord::Base
	include ActiveModel::MassAssignmentSecurity
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
     validates :name, :presence => true, :length => { :maximum => 25 }
     validates :username, :length => { :within => 4..25 }, :uniqueness => true
     validates :email, :presence => true, :length => { :maximum => 100 }, :format => EMAIL_REGEX
     validates :std, :presence => true, :length => { :maximum => 5}
     validates :section, :presence => true, :length => { :maximum => 5 } ,:format =>{:with=>/^[a-zA-Z]{1}$/}
     validates :mobile, :length => { :maximum => 10 }, :format => /^[0-9]{10}$/
     validates :password, :presence => true, :length => { :within => 5..25 }
  attr_accessible :name, :username, :password, :std, :section, :email, :mobile
end
