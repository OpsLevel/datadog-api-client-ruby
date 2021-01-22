=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # The service summary displays the graphs of a chosen service in your screenboard. Only available on FREE layout dashboards.
  class ServiceSummaryWidgetDefinition
    attr_accessor :display_format

    # APM environment.
    attr_accessor :env

    # APM service.
    attr_accessor :service

    # Whether to show the latency breakdown or not.
    attr_accessor :show_breakdown

    # Whether to show the latency distribution or not.
    attr_accessor :show_distribution

    # Whether to show the error metrics or not.
    attr_accessor :show_errors

    # Whether to show the hits metrics or not.
    attr_accessor :show_hits

    # Whether to show the latency metrics or not.
    attr_accessor :show_latency

    # Whether to show the resource list or not.
    attr_accessor :show_resource_list

    attr_accessor :size_format

    # APM span name.
    attr_accessor :span_name

    attr_accessor :time

    # Title of the widget.
    attr_accessor :title

    attr_accessor :title_align

    # Size of the title.
    attr_accessor :title_size

    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'display_format' => :'display_format',
        :'env' => :'env',
        :'service' => :'service',
        :'show_breakdown' => :'show_breakdown',
        :'show_distribution' => :'show_distribution',
        :'show_errors' => :'show_errors',
        :'show_hits' => :'show_hits',
        :'show_latency' => :'show_latency',
        :'show_resource_list' => :'show_resource_list',
        :'size_format' => :'size_format',
        :'span_name' => :'span_name',
        :'time' => :'time',
        :'title' => :'title',
        :'title_align' => :'title_align',
        :'title_size' => :'title_size',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'display_format' => :'WidgetServiceSummaryDisplayFormat',
        :'env' => :'String',
        :'service' => :'String',
        :'show_breakdown' => :'Boolean',
        :'show_distribution' => :'Boolean',
        :'show_errors' => :'Boolean',
        :'show_hits' => :'Boolean',
        :'show_latency' => :'Boolean',
        :'show_resource_list' => :'Boolean',
        :'size_format' => :'WidgetSizeFormat',
        :'span_name' => :'String',
        :'time' => :'WidgetTime',
        :'title' => :'String',
        :'title_align' => :'WidgetTextAlign',
        :'title_size' => :'String',
        :'type' => :'ServiceSummaryWidgetDefinitionType'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ServiceSummaryWidgetDefinition` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ServiceSummaryWidgetDefinition`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'display_format')
        self.display_format = attributes[:'display_format']
      end

      if attributes.key?(:'env')
        self.env = attributes[:'env']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      end

      if attributes.key?(:'show_breakdown')
        self.show_breakdown = attributes[:'show_breakdown']
      end

      if attributes.key?(:'show_distribution')
        self.show_distribution = attributes[:'show_distribution']
      end

      if attributes.key?(:'show_errors')
        self.show_errors = attributes[:'show_errors']
      end

      if attributes.key?(:'show_hits')
        self.show_hits = attributes[:'show_hits']
      end

      if attributes.key?(:'show_latency')
        self.show_latency = attributes[:'show_latency']
      end

      if attributes.key?(:'show_resource_list')
        self.show_resource_list = attributes[:'show_resource_list']
      end

      if attributes.key?(:'size_format')
        self.size_format = attributes[:'size_format']
      end

      if attributes.key?(:'span_name')
        self.span_name = attributes[:'span_name']
      end

      if attributes.key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'title_align')
        self.title_align = attributes[:'title_align']
      end

      if attributes.key?(:'title_size')
        self.title_size = attributes[:'title_size']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'trace_service'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @env.nil?
        invalid_properties.push('invalid value for "env", env cannot be nil.')
      end

      if @service.nil?
        invalid_properties.push('invalid value for "service", service cannot be nil.')
      end

      if @span_name.nil?
        invalid_properties.push('invalid value for "span_name", span_name cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @env.nil?
      return false if @service.nil?
      return false if @span_name.nil?
      return false if @type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          display_format == o.display_format &&
          env == o.env &&
          service == o.service &&
          show_breakdown == o.show_breakdown &&
          show_distribution == o.show_distribution &&
          show_errors == o.show_errors &&
          show_hits == o.show_hits &&
          show_latency == o.show_latency &&
          show_resource_list == o.show_resource_list &&
          size_format == o.size_format &&
          span_name == o.span_name &&
          time == o.time &&
          title == o.title &&
          title_align == o.title_align &&
          title_size == o.title_size &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [display_format, env, service, show_breakdown, show_distribution, show_errors, show_hits, show_latency, show_resource_list, size_format, span_name, time, title, title_align, title_size, type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
