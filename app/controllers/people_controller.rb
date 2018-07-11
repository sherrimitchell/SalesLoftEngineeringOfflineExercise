
 require 'salesloft'

class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
# Initializing HTTParty instance
  def initialize
    @salesloft = Salesloft.new
  end
# Returning people info
  def index
    people = @salesloft.get_people_info
  end

  def create
    person = @psalesloft.get_people
    Person.find_or_create_by(i: user['id']) do |person|
      ( person.name = person['display_name'], 
        person.email = person['email_address'],
        person.job_title = person['title'] )
    end
  end
end
