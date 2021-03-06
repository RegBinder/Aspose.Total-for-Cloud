package com.aspose.total.cloud.files;

import com.aspose.storage.api.StorageApi;
import com.aspose.storage.model.ResponseMessage;
import com.aspose.total.cloud.Configuration;

public class GetListOfFilesAsposeStorageExample {

    public static void main(String[] args) {
      //ExStart: 1
        try
        {
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
            // Upload source file to aspose cloud storage
           ResponseMessage responseMessage= storageApi.GetListFiles("", "");
           System.out.println(responseMessage.getMessage().toString());           
           

        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
        //ExEnd: 1
    }

}
