=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V2
  class MetricsAPI
    attr_accessor :api_client

    def initialize(api_client = APIClient.default)
      @api_client = api_client
    end
    # Configure tags for multiple metrics
    # Create and define a list of queryable tag keys for a set of existing count, gauge, rate, and distribution metrics. Metrics are selected by passing a metric name prefix. Use the Delete method of this API path to remove tag configurations. Results can be sent to a set of account email addresses, just like the same operation in the Datadog web app. If multiple calls include the same metric, the last configuration applied (not by submit order) is used, do not expect deterministic ordering of concurrent calls. Can only be used with application keys of users with the `Manage Tags for Metrics` permission.
    # @param body [MetricBulkTagConfigCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [MetricBulkTagConfigResponse]
    def create_bulk_tags_metrics_configuration(body, opts = {})
      data, _status_code, _headers = create_bulk_tags_metrics_configuration_with_http_info(body, opts)
      data
    end

    # Configure tags for multiple metrics
    # Create and define a list of queryable tag keys for a set of existing count, gauge, rate, and distribution metrics. Metrics are selected by passing a metric name prefix. Use the Delete method of this API path to remove tag configurations. Results can be sent to a set of account email addresses, just like the same operation in the Datadog web app. If multiple calls include the same metric, the last configuration applied (not by submit order) is used, do not expect deterministic ordering of concurrent calls. Can only be used with application keys of users with the &#x60;Manage Tags for Metrics&#x60; permission.
    # @param body [MetricBulkTagConfigCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricBulkTagConfigResponse, Integer, Hash)>] MetricBulkTagConfigResponse data, response status code and response headers
    def create_bulk_tags_metrics_configuration_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_bulk_tags_metrics_configuration)
        unstable_enabled = @api_client.config.unstable_operations[:create_bulk_tags_metrics_configuration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_bulk_tags_metrics_configuration")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_bulk_tags_metrics_configuration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsAPI.create_bulk_tags_metrics_configuration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MetricsAPI.create_bulk_tags_metrics_configuration"
      end
      # resource path
      local_var_path = '/api/v2/metrics/config/bulk-tags'

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
      return_type = opts[:debug_return_type] || 'MetricBulkTagConfigResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:AuthZ, :apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_bulk_tags_metrics_configuration,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsAPI#create_bulk_tags_metrics_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a tag configuration
    # Create and define a list of queryable tag keys for an existing count/gauge/rate/distribution metric. Optionally, include percentile aggregations on any distribution metric or configure custom aggregations on any count, rate, or gauge metric. Can only be used with application keys of users with the `Manage Tags for Metrics` permission.
    # @param metric_name [String] The name of the metric.
    # @param body [MetricTagConfigurationCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [MetricTagConfigurationResponse]
    def create_tag_configuration(metric_name, body, opts = {})
      data, _status_code, _headers = create_tag_configuration_with_http_info(metric_name, body, opts)
      data
    end

    # Create a tag configuration
    # Create and define a list of queryable tag keys for an existing count/gauge/rate/distribution metric. Optionally, include percentile aggregations on any distribution metric or configure custom aggregations on any count, rate, or gauge metric. Can only be used with application keys of users with the &#x60;Manage Tags for Metrics&#x60; permission.
    # @param metric_name [String] The name of the metric.
    # @param body [MetricTagConfigurationCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricTagConfigurationResponse, Integer, Hash)>] MetricTagConfigurationResponse data, response status code and response headers
    def create_tag_configuration_with_http_info(metric_name, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_tag_configuration)
        unstable_enabled = @api_client.config.unstable_operations[:create_tag_configuration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_tag_configuration")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "create_tag_configuration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsAPI.create_tag_configuration ...'
      end
      # verify the required parameter 'metric_name' is set
      if @api_client.config.client_side_validation && metric_name.nil?
        fail ArgumentError, "Missing the required parameter 'metric_name' when calling MetricsAPI.create_tag_configuration"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MetricsAPI.create_tag_configuration"
      end
      # resource path
      local_var_path = '/api/v2/metrics/{metric_name}/tags'.sub('{' + 'metric_name' + '}', CGI.escape(metric_name.to_s))

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
      return_type = opts[:debug_return_type] || 'MetricTagConfigurationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :create_tag_configuration,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsAPI#create_tag_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Configure tags for multiple metrics
    # Delete all custom lists of queryable tag keys for a set of existing count, gauge, rate, and distribution metrics. Metrics are selected by passing a metric name prefix. Results can be sent to a set of account email addresses, just like the same operation in the Datadog web app. Can only be used with application keys of users with the `Manage Tags for Metrics` permission.
    # @param body [MetricBulkTagConfigDeleteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [MetricBulkTagConfigResponse]
    def delete_bulk_tags_metrics_configuration(body, opts = {})
      data, _status_code, _headers = delete_bulk_tags_metrics_configuration_with_http_info(body, opts)
      data
    end

    # Configure tags for multiple metrics
    # Delete all custom lists of queryable tag keys for a set of existing count, gauge, rate, and distribution metrics. Metrics are selected by passing a metric name prefix. Results can be sent to a set of account email addresses, just like the same operation in the Datadog web app. Can only be used with application keys of users with the &#x60;Manage Tags for Metrics&#x60; permission.
    # @param body [MetricBulkTagConfigDeleteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricBulkTagConfigResponse, Integer, Hash)>] MetricBulkTagConfigResponse data, response status code and response headers
    def delete_bulk_tags_metrics_configuration_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_bulk_tags_metrics_configuration)
        unstable_enabled = @api_client.config.unstable_operations[:delete_bulk_tags_metrics_configuration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_bulk_tags_metrics_configuration")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "delete_bulk_tags_metrics_configuration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsAPI.delete_bulk_tags_metrics_configuration ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MetricsAPI.delete_bulk_tags_metrics_configuration"
      end
      # resource path
      local_var_path = '/api/v2/metrics/config/bulk-tags'

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
      return_type = opts[:debug_return_type] || 'MetricBulkTagConfigResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:AuthZ, :apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_bulk_tags_metrics_configuration,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsAPI#delete_bulk_tags_metrics_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a tag configuration
    # Deletes a metric's tag configuration. Can only be used with application keys from users with the `Manage Tags for Metrics` permission.
    # @param metric_name [String] The name of the metric.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tag_configuration(metric_name, opts = {})
      delete_tag_configuration_with_http_info(metric_name, opts)
      nil
    end

    # Delete a tag configuration
    # Deletes a metric&#39;s tag configuration. Can only be used with application keys from users with the &#x60;Manage Tags for Metrics&#x60; permission.
    # @param metric_name [String] The name of the metric.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tag_configuration_with_http_info(metric_name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_tag_configuration)
        unstable_enabled = @api_client.config.unstable_operations[:delete_tag_configuration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_tag_configuration")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "delete_tag_configuration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsAPI.delete_tag_configuration ...'
      end
      # verify the required parameter 'metric_name' is set
      if @api_client.config.client_side_validation && metric_name.nil?
        fail ArgumentError, "Missing the required parameter 'metric_name' when calling MetricsAPI.delete_tag_configuration"
      end
      # resource path
      local_var_path = '/api/v2/metrics/{metric_name}/tags'.sub('{' + 'metric_name' + '}', CGI.escape(metric_name.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :delete_tag_configuration,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsAPI#delete_tag_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List tag configuration by name
    # Returns the tag configuration for the given metric name.
    # @param metric_name [String] The name of the metric.
    # @param [Hash] opts the optional parameters
    # @return [MetricTagConfigurationResponse]
    def list_tag_configuration_by_name(metric_name, opts = {})
      data, _status_code, _headers = list_tag_configuration_by_name_with_http_info(metric_name, opts)
      data
    end

    # List tag configuration by name
    # Returns the tag configuration for the given metric name.
    # @param metric_name [String] The name of the metric.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricTagConfigurationResponse, Integer, Hash)>] MetricTagConfigurationResponse data, response status code and response headers
    def list_tag_configuration_by_name_with_http_info(metric_name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_tag_configuration_by_name)
        unstable_enabled = @api_client.config.unstable_operations[:list_tag_configuration_by_name]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_tag_configuration_by_name")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_tag_configuration_by_name"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsAPI.list_tag_configuration_by_name ...'
      end
      # verify the required parameter 'metric_name' is set
      if @api_client.config.client_side_validation && metric_name.nil?
        fail ArgumentError, "Missing the required parameter 'metric_name' when calling MetricsAPI.list_tag_configuration_by_name"
      end
      # resource path
      local_var_path = '/api/v2/metrics/{metric_name}/tags'.sub('{' + 'metric_name' + '}', CGI.escape(metric_name.to_s))

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
      return_type = opts[:debug_return_type] || 'MetricTagConfigurationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_tag_configuration_by_name,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsAPI#list_tag_configuration_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List tag configurations
    # Returns all configured count/gauge/rate/distribution metric names (with additional filters if specified).
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :filter_configured Filter metrics that have configured tags.
    # @option opts [String] :filter_tags_configured Filter tag configurations by configured tags.
    # @option opts [MetricTagConfigurationMetricTypes] :filter_metric_type Filter tag configurations by metric type. (default to 'gauge')
    # @option opts [Boolean] :filter_include_percentiles Filter distributions with additional percentile aggregations enabled or disabled.
    # @option opts [String] :filter_tags Filter metrics that have been submitted with the given tags. Supports boolean and wildcard expressions. Cannot be combined with other filters.
    # @option opts [Integer] :window_seconds The number of seconds of look back (from now) to apply to a filter[tag] query. Defaults value is 3600 (1 hour), maximum value is 172,800 (2 days).
    # @return [MetricsAndMetricTagConfigurationsResponse]
    def list_tag_configurations(opts = {})
      data, _status_code, _headers = list_tag_configurations_with_http_info(opts)
      data
    end

    # List tag configurations
    # Returns all configured count/gauge/rate/distribution metric names (with additional filters if specified).
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :filter_configured Filter metrics that have configured tags.
    # @option opts [String] :filter_tags_configured Filter tag configurations by configured tags.
    # @option opts [MetricTagConfigurationMetricTypes] :filter_metric_type Filter tag configurations by metric type.
    # @option opts [Boolean] :filter_include_percentiles Filter distributions with additional percentile aggregations enabled or disabled.
    # @option opts [String] :filter_tags Filter metrics that have been submitted with the given tags. Supports boolean and wildcard expressions. Cannot be combined with other filters.
    # @option opts [Integer] :window_seconds The number of seconds of look back (from now) to apply to a filter[tag] query. Defaults value is 3600 (1 hour), maximum value is 172,800 (2 days).
    # @return [Array<(MetricsAndMetricTagConfigurationsResponse, Integer, Hash)>] MetricsAndMetricTagConfigurationsResponse data, response status code and response headers
    def list_tag_configurations_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_tag_configurations)
        unstable_enabled = @api_client.config.unstable_operations[:list_tag_configurations]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_tag_configurations")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_tag_configurations"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsAPI.list_tag_configurations ...'
      end
      # resource path
      local_var_path = '/api/v2/metrics'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter[configured]'] = opts[:'filter_configured'] if !opts[:'filter_configured'].nil?
      query_params[:'filter[tags_configured]'] = opts[:'filter_tags_configured'] if !opts[:'filter_tags_configured'].nil?
      query_params[:'filter[metric_type]'] = opts[:'filter_metric_type'] if !opts[:'filter_metric_type'].nil?
      query_params[:'filter[include_percentiles]'] = opts[:'filter_include_percentiles'] if !opts[:'filter_include_percentiles'].nil?
      query_params[:'filter[tags]'] = opts[:'filter_tags'] if !opts[:'filter_tags'].nil?
      query_params[:'window[seconds]'] = opts[:'window_seconds'] if !opts[:'window_seconds'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetricsAndMetricTagConfigurationsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:AuthZ, :apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_tag_configurations,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsAPI#list_tag_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List tags by metric name
    # View indexed tag key-value pairs for a given metric name.
    # @param metric_name [String] The name of the metric.
    # @param [Hash] opts the optional parameters
    # @return [MetricAllTagsResponse]
    def list_tags_by_metric_name(metric_name, opts = {})
      data, _status_code, _headers = list_tags_by_metric_name_with_http_info(metric_name, opts)
      data
    end

    # List tags by metric name
    # View indexed tag key-value pairs for a given metric name.
    # @param metric_name [String] The name of the metric.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricAllTagsResponse, Integer, Hash)>] MetricAllTagsResponse data, response status code and response headers
    def list_tags_by_metric_name_with_http_info(metric_name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_tags_by_metric_name)
        unstable_enabled = @api_client.config.unstable_operations[:list_tags_by_metric_name]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_tags_by_metric_name")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_tags_by_metric_name"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsAPI.list_tags_by_metric_name ...'
      end
      # verify the required parameter 'metric_name' is set
      if @api_client.config.client_side_validation && metric_name.nil?
        fail ArgumentError, "Missing the required parameter 'metric_name' when calling MetricsAPI.list_tags_by_metric_name"
      end
      # resource path
      local_var_path = '/api/v2/metrics/{metric_name}/all-tags'.sub('{' + 'metric_name' + '}', CGI.escape(metric_name.to_s))

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
      return_type = opts[:debug_return_type] || 'MetricAllTagsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:AuthZ, :apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_tags_by_metric_name,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsAPI#list_tags_by_metric_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List distinct metric volumes by metric name
    # View distinct metrics volumes for the given metric name.  Custom distribution metrics will return both ingested and indexed custom metric volumes. For Metrics without Limits&trade; beta customers, all metrics will return both ingested/indexed volumes. Custom metrics generated in-app from other products will return `null` for ingested volumes.
    # @param metric_name [String] The name of the metric.
    # @param [Hash] opts the optional parameters
    # @return [MetricVolumesResponse]
    def list_volumes_by_metric_name(metric_name, opts = {})
      data, _status_code, _headers = list_volumes_by_metric_name_with_http_info(metric_name, opts)
      data
    end

    # List distinct metric volumes by metric name
    # View distinct metrics volumes for the given metric name.  Custom distribution metrics will return both ingested and indexed custom metric volumes. For Metrics without Limits&amp;trade; beta customers, all metrics will return both ingested/indexed volumes. Custom metrics generated in-app from other products will return &#x60;null&#x60; for ingested volumes.
    # @param metric_name [String] The name of the metric.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricVolumesResponse, Integer, Hash)>] MetricVolumesResponse data, response status code and response headers
    def list_volumes_by_metric_name_with_http_info(metric_name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_volumes_by_metric_name)
        unstable_enabled = @api_client.config.unstable_operations[:list_volumes_by_metric_name]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_volumes_by_metric_name")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "list_volumes_by_metric_name"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsAPI.list_volumes_by_metric_name ...'
      end
      # verify the required parameter 'metric_name' is set
      if @api_client.config.client_side_validation && metric_name.nil?
        fail ArgumentError, "Missing the required parameter 'metric_name' when calling MetricsAPI.list_volumes_by_metric_name"
      end
      # resource path
      local_var_path = '/api/v2/metrics/{metric_name}/volumes'.sub('{' + 'metric_name' + '}', CGI.escape(metric_name.to_s))

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
      return_type = opts[:debug_return_type] || 'MetricVolumesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:AuthZ, :apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :list_volumes_by_metric_name,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsAPI#list_volumes_by_metric_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a tag configuration
    # Update the tag configuration of a metric or percentile aggregations of a distribution metric or custom aggregations of a count, rate, or gauge metric. Can only be used with application keys from users with the `Manage Tags for Metrics` permission.
    # @param metric_name [String] The name of the metric.
    # @param body [MetricTagConfigurationUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [MetricTagConfigurationResponse]
    def update_tag_configuration(metric_name, body, opts = {})
      data, _status_code, _headers = update_tag_configuration_with_http_info(metric_name, body, opts)
      data
    end

    # Update a tag configuration
    # Update the tag configuration of a metric or percentile aggregations of a distribution metric or custom aggregations of a count, rate, or gauge metric. Can only be used with application keys from users with the &#x60;Manage Tags for Metrics&#x60; permission.
    # @param metric_name [String] The name of the metric.
    # @param body [MetricTagConfigurationUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricTagConfigurationResponse, Integer, Hash)>] MetricTagConfigurationResponse data, response status code and response headers
    def update_tag_configuration_with_http_info(metric_name, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_tag_configuration)
        unstable_enabled = @api_client.config.unstable_operations[:update_tag_configuration]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_tag_configuration")
        else
          raise APIError.new(message: format("Unstable operation '%s' is disabled", "update_tag_configuration"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsAPI.update_tag_configuration ...'
      end
      # verify the required parameter 'metric_name' is set
      if @api_client.config.client_side_validation && metric_name.nil?
        fail ArgumentError, "Missing the required parameter 'metric_name' when calling MetricsAPI.update_tag_configuration"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MetricsAPI.update_tag_configuration"
      end
      # resource path
      local_var_path = '/api/v2/metrics/{metric_name}/tags'.sub('{' + 'metric_name' + '}', CGI.escape(metric_name.to_s))

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
      return_type = opts[:debug_return_type] || 'MetricTagConfigurationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth]

      new_options = opts.merge(
        :operation => :update_tag_configuration,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsAPI#update_tag_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
