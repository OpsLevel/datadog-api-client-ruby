=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V1
  class EventsAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end

    # Post an event
    # This endpoint allows you to post events to the stream.
    # Tag them, set priority and event aggregate them with other events.
    # @param body [EventCreateRequest] Event request object
    # @param opts [Hash] the optional parameters
    # @return [EventCreateResponse]
    def create_event(body, opts = {})
      data, _status_code, _headers = create_event_with_http_info(body, opts)
      data
    end

    # Post an event
    # This endpoint allows you to post events to the stream.
    # Tag them, set priority and event aggregate them with other events.
    # @param body [EventCreateRequest] Event request object
    # @param opts [Hash] the optional parameters
    # @return [Array<(EventCreateResponse, Integer, Hash)>] EventCreateResponse data, response status code and response headers
    def create_event_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_event)
        unstable_enabled = @api_client.config.unstable_operations[:create_event]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_event")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_event"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsAPI.create_event ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EventsAPI.create_event"
      end
      # resource path
      local_var_path = '/api/v1/events'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'EventCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth]

      new_options = opts.merge(
        :operation => :create_event,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsAPI#create_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an event
    # This endpoint allows you to query for event details.
    #
    # **Note**: If the event you’re querying contains markdown formatting of any kind,
    # you may see characters such as `%`,`\`,`n` in your output.
    # @param event_id [Integer] The ID of the event.
    # @param opts [Hash] the optional parameters
    # @return [EventResponse]
    def get_event(event_id, opts = {})
      data, _status_code, _headers = get_event_with_http_info(event_id, opts)
      data
    end

    # Get an event
    # This endpoint allows you to query for event details.
    #
    # **Note**: If the event you’re querying contains markdown formatting of any kind,
    # you may see characters such as `%`,`\`,`n` in your output.
    # @param event_id [Integer] The ID of the event.
    # @param opts [Hash] the optional parameters
    # @return [Array<(EventResponse, Integer, Hash)>] EventResponse data, response status code and response headers
    def get_event_with_http_info(event_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_event)
        unstable_enabled = @api_client.config.unstable_operations[:get_event]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_event")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "get_event"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsAPI.get_event ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling EventsAPI.get_event"
      end
      # resource path
      local_var_path = '/api/v1/events/{event_id}'.sub('{event_id}', CGI.escape(event_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EventResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_event,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsAPI#get_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query the event stream
    # The event stream can be queried and filtered by time, priority, sources and tags.
    #
    # **Notes**:
    # - If the event you’re querying contains markdown formatting of any kind,
    # you may see characters such as `%`,`\`,`n` in your output.
    #
    # - This endpoint returns a maximum of `1000` most recent results. To return additional results,
    # identify the last timestamp of the last result and set that as the `end` query time to
    # paginate the results. You can also use the page parameter to specify which set of `1000` results to return.
    # @param start [Integer] POSIX timestamp.
    # @param _end [Integer] POSIX timestamp.
    # @param opts [Hash] the optional parameters
    # @option opts [EventPriority] :priority Priority of your events, either `low` or `normal`.
    # @option opts [String] :sources A comma separated string of sources.
    # @option opts [String] :tags A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope.
    # @option opts [Boolean] :unaggregated Set unaggregated to `true` to return all events within the specified [`start`,`end`] timeframe. Otherwise if an event is aggregated to a parent event with a timestamp outside of the timeframe, it won't be available in the output. Aggregated events with `is_aggregate=true` in the response will still be returned unless exclude_aggregate is set to `true.`
    # @option opts [Boolean] :exclude_aggregate Set `exclude_aggregate` to `true` to only return unaggregated events where `is_aggregate=false` in the response. If the `exclude_aggregate` parameter is set to `true`, then the unaggregated parameter is ignored and will be `true` by default.
    # @option opts [Integer] :page By default 1000 results are returned per request. Set page to the number of the page to return with `0` being the first page. The page parameter can only be used when either unaggregated or exclude_aggregate is set to `true.`
    # @return [EventListResponse]
    def list_events(start, _end, opts = {})
      data, _status_code, _headers = list_events_with_http_info(start, _end, opts)
      data
    end

    # Query the event stream
    # The event stream can be queried and filtered by time, priority, sources and tags.
    #
    # **Notes**:
    # - If the event you’re querying contains markdown formatting of any kind,
    # you may see characters such as `%`,`\`,`n` in your output.
    #
    # - This endpoint returns a maximum of `1000` most recent results. To return additional results,
    # identify the last timestamp of the last result and set that as the `end` query time to
    # paginate the results. You can also use the page parameter to specify which set of `1000` results to return.
    # @param start [Integer] POSIX timestamp.
    # @param _end [Integer] POSIX timestamp.
    # @param opts [Hash] the optional parameters
    # @option opts [EventPriority] :priority Priority of your events, either `low` or `normal`.
    # @option opts [String] :sources A comma separated string of sources.
    # @option opts [String] :tags A comma separated list indicating what tags, if any, should be used to filter the list of monitors by scope.
    # @option opts [Boolean] :unaggregated Set unaggregated to `true` to return all events within the specified [`start`,`end`] timeframe. Otherwise if an event is aggregated to a parent event with a timestamp outside of the timeframe, it won't be available in the output. Aggregated events with `is_aggregate=true` in the response will still be returned unless exclude_aggregate is set to `true.`
    # @option opts [Boolean] :exclude_aggregate Set `exclude_aggregate` to `true` to only return unaggregated events where `is_aggregate=false` in the response. If the `exclude_aggregate` parameter is set to `true`, then the unaggregated parameter is ignored and will be `true` by default.
    # @option opts [Integer] :page By default 1000 results are returned per request. Set page to the number of the page to return with `0` being the first page. The page parameter can only be used when either unaggregated or exclude_aggregate is set to `true.`
    # @return [Array<(EventListResponse, Integer, Hash)>] EventListResponse data, response status code and response headers
    def list_events_with_http_info(start, _end, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_events)
        unstable_enabled = @api_client.config.unstable_operations[:list_events]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_events")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_events"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsAPI.list_events ...'
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling EventsAPI.list_events"
      end
      # verify the required parameter '_end' is set
      if @api_client.config.client_side_validation && _end.nil?
        fail ArgumentError, "Missing the required parameter '_end' when calling EventsAPI.list_events"
      end
      allowable_values = ['normal', 'low']
      if @api_client.config.client_side_validation && opts[:'priority'] && !allowable_values.include?(opts[:'priority'])
        fail ArgumentError, "invalid value for \"priority\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] > 2147483647
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling EventsAPI.list_events, must be smaller than or equal to 2147483647.'
      end
      # resource path
      local_var_path = '/api/v1/events'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start'] = start
      query_params[:'end'] = _end
      query_params[:'priority'] = opts[:'priority'] if !opts[:'priority'].nil?
      query_params[:'sources'] = opts[:'sources'] if !opts[:'sources'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'unaggregated'] = opts[:'unaggregated'] if !opts[:'unaggregated'].nil?
      query_params[:'exclude_aggregate'] = opts[:'exclude_aggregate'] if !opts[:'exclude_aggregate'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EventListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_events,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsAPI#list_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
