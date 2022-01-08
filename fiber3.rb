#3rd version of air sample entry program requirements

#Sample class definition - a sample has count, volume, duration, fields, id
#Potentially use time objects to dynamically generate the duration
#Samples are stored in a hash - the sample ID will be the hash key to access the sample

#CRUD actions for fiber objects - create, read, update, delete
#Are these class methods?

#Locally stored sample variables can be written into a file
#Files can be loaded into the program for displaying past data
#program checks the local directory for sample files
#Display available files in a list, user selects the file
#option to look in a different directory?

#use regex to check user input

#Main program loop - user selects option, etc.

#Commands to break out of the loop - quit with save, quit without saving

#Is it possible to use Prawn gem to generate a PDF air sample log - may only be possible in Rails

#Use Git this time for version control

#Find out if there is a gem for displaying data in columns nicely

#May need a sheet class with AAR data, microscope data, client data etc. A sheet would have one to many association with sample class

require 'table_print'

class Sample
  
  def initialize(id=0, count=0, volume=0, fields=100)
    @id = id
    @count = count
    @volume = volume
    @fields = fields
  end

  attr_accessor :id, :count, :volume, :fields

  def mm2
    (@count / (@fields * 0.00785)).round(3)
  end

  def cc
    (((@count / (@fields * 0.00785)) * 385) / (@volume * 1000)).round(3)
  end

end

def create

end

def read

end

def update

end

def destroy

def print_samples

end

loop do

end
