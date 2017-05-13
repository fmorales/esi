=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class AllianceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List all alliances
    # List all active player alliances  ---  Alternate route: `/v1/alliances/`  Alternate route: `/latest/alliances/`  Alternate route: `/legacy/alliances/`   ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<Integer>]
    def get_alliances(opts = {})
      data, _status_code, _headers = get_alliances_with_http_info(opts)
      return data
    end

    # List all alliances
    # List all active player alliances  ---  Alternate route: &#x60;/v1/alliances/&#x60;  Alternate route: &#x60;/latest/alliances/&#x60;  Alternate route: &#x60;/legacy/alliances/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_alliances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AllianceApi.get_alliances ..."
      end
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/alliances/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AllianceApi#get_alliances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get alliance information
    # Public information about an alliance  ---  Alternate route: `/v1/alliances/{alliance_id}/`   ---  This route is cached for up to 3600 seconds
    # @param alliance_id An Eve alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetAlliancesAllianceIdOk]
    def get_alliance_by_id(alliance_id, opts = {})
      data, _status_code, _headers = get_alliance_by_id_with_http_info(alliance_id, opts)
      return data
    end

    # Get alliance information
    # Public information about an alliance  ---  Alternate route: &#x60;/v1/alliances/{alliance_id}/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param alliance_id An Eve alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetAlliancesAllianceIdOk, Fixnum, Hash)>] GetAlliancesAllianceIdOk data, response status code and response headers
    def get_alliance_by_id_with_http_info(alliance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AllianceApi.get_alliance_by_id ..."
      end
      # verify the required parameter 'alliance_id' is set
      fail ArgumentError, "Missing the required parameter 'alliance_id' when calling AllianceApi.get_alliance_by_id" if alliance_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/alliances/{alliance_id}/".sub('{format}','json').sub('{' + 'alliance_id' + '}', alliance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'GetAlliancesAllianceIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AllianceApi#get_alliance_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List alliance's corporations
    # List all current member corporations of an alliance  ---  Alternate route: `/v1/alliances/{alliance_id}/corporations/`  Alternate route: `/latest/alliances/{alliance_id}/corporations/`  Alternate route: `/legacy/alliances/{alliance_id}/corporations/`   ---  This route is cached for up to 3600 seconds
    # @param alliance_id An EVE alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<Integer>]
    def get_corporations_in_alliance(alliance_id, opts = {})
      data, _status_code, _headers = get_corporations_in_alliance_with_http_info(alliance_id, opts)
      return data
    end

    # List alliance&#39;s corporations
    # List all current member corporations of an alliance  ---  Alternate route: &#x60;/v1/alliances/{alliance_id}/corporations/&#x60;  Alternate route: &#x60;/latest/alliances/{alliance_id}/corporations/&#x60;  Alternate route: &#x60;/legacy/alliances/{alliance_id}/corporations/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param alliance_id An EVE alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_corporations_in_alliance_with_http_info(alliance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AllianceApi.get_corporations_in_alliance ..."
      end
      # verify the required parameter 'alliance_id' is set
      fail ArgumentError, "Missing the required parameter 'alliance_id' when calling AllianceApi.get_corporations_in_alliance" if alliance_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/alliances/{alliance_id}/corporations/".sub('{format}','json').sub('{' + 'alliance_id' + '}', alliance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AllianceApi#get_corporations_in_alliance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get alliance icon
    # Get the icon urls for a alliance  ---  Alternate route: `/v1/alliances/{alliance_id}/icons/`  Alternate route: `/legacy/alliances/{alliance_id}/icons/`  Alternate route: `/latest/alliances/{alliance_id}/icons/`   ---  This route is cached for up to 3600 seconds
    # @param alliance_id An EVE alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetAlliancesAllianceIdIconsOk]
    def get_alliance_icon(alliance_id, opts = {})
      data, _status_code, _headers = get_alliance_icon_with_http_info(alliance_id, opts)
      return data
    end

    # Get alliance icon
    # Get the icon urls for a alliance  ---  Alternate route: &#x60;/v1/alliances/{alliance_id}/icons/&#x60;  Alternate route: &#x60;/legacy/alliances/{alliance_id}/icons/&#x60;  Alternate route: &#x60;/latest/alliances/{alliance_id}/icons/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param alliance_id An EVE alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetAlliancesAllianceIdIconsOk, Fixnum, Hash)>] GetAlliancesAllianceIdIconsOk data, response status code and response headers
    def get_alliance_icon_with_http_info(alliance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AllianceApi.get_alliance_icon ..."
      end
      # verify the required parameter 'alliance_id' is set
      fail ArgumentError, "Missing the required parameter 'alliance_id' when calling AllianceApi.get_alliance_icon" if alliance_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/alliances/{alliance_id}/icons/".sub('{format}','json').sub('{' + 'alliance_id' + '}', alliance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'GetAlliancesAllianceIdIconsOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AllianceApi#get_alliance_icon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get alliance names
    # Resolve a set of alliance IDs to alliance names  ---  Alternate route: `/v1/alliances/names/`  Alternate route: `/legacy/alliances/names/`  Alternate route: `/latest/alliances/names/`   ---  This route is cached for up to 3600 seconds
    # @param alliance_ids A comma separated list of alliance IDs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<GetAlliancesNames200Ok>]
    def get_alliance_names(alliance_ids, opts = {})
      data, _status_code, _headers = get_alliance_names_with_http_info(alliance_ids, opts)
      return data
    end

    # Get alliance names
    # Resolve a set of alliance IDs to alliance names  ---  Alternate route: &#x60;/v1/alliances/names/&#x60;  Alternate route: &#x60;/legacy/alliances/names/&#x60;  Alternate route: &#x60;/latest/alliances/names/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param alliance_ids A comma separated list of alliance IDs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<GetAlliancesNames200Ok>, Fixnum, Hash)>] Array<GetAlliancesNames200Ok> data, response status code and response headers
    def get_alliance_names_with_http_info(alliance_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AllianceApi.get_alliance_names ..."
      end
      # verify the required parameter 'alliance_ids' is set
      fail ArgumentError, "Missing the required parameter 'alliance_ids' when calling AllianceApi.get_alliance_names" if alliance_ids.nil?
      if alliance_ids.length < 1
        fail ArgumentError, 'invalid value for "alliance_ids" when calling AllianceApi.get_alliance_names, number of items must be greater than or equal to 1.'
      end

      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/alliances/names/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'alliance_ids'] = @api_client.build_collection_param(alliance_ids, :csv)
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

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
        :return_type => 'Array<GetAlliancesNames200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AllianceApi#get_alliance_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
