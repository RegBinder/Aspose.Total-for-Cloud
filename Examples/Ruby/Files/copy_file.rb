#ExStart:
require 'aspose_storage_cloud'

class Files
    
  include AsposeStorageCloud

  def initialize
    # Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("App Key", "App SID")
    @storage_api = StorageApi.new
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end
  
  def copy_file
  	# Upload file to Aspose Cloud Storage
    file_name = "testfile.txt"
    upload_file(file_name)
	  newdest = "copy-testfile.txt"

	  response = @storage_api.put_copy(file_name, newdest)
  end

end

files = Files.new()
puts files.copy_file
#ExEnd: