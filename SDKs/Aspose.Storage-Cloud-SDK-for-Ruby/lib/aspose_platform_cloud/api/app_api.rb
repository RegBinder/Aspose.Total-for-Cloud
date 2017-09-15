=begin
#Web API Swagger specification

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module AsposePlatformCloud
  class AppApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete Application
    # 
    # @param name Application Name
    # @param [Hash] opts the optional parameters
    # @return [File]
    def app_delete(name, opts = {})
      data, _status_code, _headers = app_delete_with_http_info(name, opts)
      return data
    end

    # Delete Application
    # 
    # @param name Application Name
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def app_delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.app_delete ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling AppApi.app_delete"
      end
      # resource path
      local_var_path = "/app/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#app_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get List of Applications
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<App>]
    def app_get(opts = {})
      data, _status_code, _headers = app_get_with_http_info(opts)
      return data
    end

    # Get List of Applications
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<App>, Fixnum, Hash)>] Array<App> data, response status code and response headers
    def app_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.app_get ..."
      end
      # resource path
      local_var_path = "/app"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<App>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#app_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Application by Name
    # 
    # @param name Application Name
    # @param [Hash] opts the optional parameters
    # @return [App]
    def app_get_by_name(name, opts = {})
      data, _status_code, _headers = app_get_by_name_with_http_info(name, opts)
      return data
    end

    # Get Application by Name
    # 
    # @param name Application Name
    # @param [Hash] opts the optional parameters
    # @return [Array<(App, Fixnum, Hash)>] App data, response status code and response headers
    def app_get_by_name_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.app_get_by_name ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling AppApi.app_get_by_name"
      end
      # resource path
      local_var_path = "/app/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'App')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#app_get_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Application Usage By Period
    # 
    # @param name Application Name
    # @param start Period end date
    # @param _end Period end date
    # @param [Hash] opts the optional parameters
    # @return [ApplicationUsageResponse]
    def app_get_usage(name, start, _end, opts = {})
      data, _status_code, _headers = app_get_usage_with_http_info(name, start, _end, opts)
      return data
    end

    # Get Application Usage By Period
    # 
    # @param name Application Name
    # @param start Period end date
    # @param _end Period end date
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationUsageResponse, Fixnum, Hash)>] ApplicationUsageResponse data, response status code and response headers
    def app_get_usage_with_http_info(name, start, _end, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.app_get_usage ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling AppApi.app_get_usage"
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling AppApi.app_get_usage"
      end
      # verify the required parameter '_end' is set
      if @api_client.config.client_side_validation && _end.nil?
        fail ArgumentError, "Missing the required parameter '_end' when calling AppApi.app_get_usage"
      end
      # resource path
      local_var_path = "/app/{name}/usage".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'start'] = start
      query_params[:'end'] = _end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApplicationUsageResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#app_get_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new Application
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [App] :app Application
    # @return [File]
    def app_post(opts = {})
      data, _status_code, _headers = app_post_with_http_info(opts)
      return data
    end

    # Create new Application
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [App] :app Application
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def app_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.app_post ..."
      end
      # resource path
      local_var_path = "/app"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'app'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#app_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Application Name
    # 
    # @param name Application Name
    # @param [Hash] opts the optional parameters
    # @option opts [App] :app Application
    # @return [File]
    def app_put(name, opts = {})
      data, _status_code, _headers = app_put_with_http_info(name, opts)
      return data
    end

    # Update Application Name
    # 
    # @param name Application Name
    # @param [Hash] opts the optional parameters
    # @option opts [App] :app Application
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def app_put_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.app_put ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling AppApi.app_put"
      end
      # resource path
      local_var_path = "/app/{name}".sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'app'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#app_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
