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

require 'date'
require 'time'

module DatadogAPIClient::V1
  # The PagerDuty service that is available for integration with Datadog.
  class PagerDutyService
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Your service key in PagerDuty.
    attr_accessor :service_key

    # Your service name associated with a service key in PagerDuty.
    attr_accessor :service_name

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'service_key' => :'service_key',
        :'service_name' => :'service_name'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'service_key' => :'String',
        :'service_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::PagerDutyService` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::PagerDutyService`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'service_key')
        self.service_key = attributes[:'service_key']
      end

      if attributes.key?(:'service_name')
        self.service_name = attributes[:'service_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if @service_key.nil?
        invalid_properties.push('invalid value for "service_key", service_key cannot be nil.')
      end
      if @service_name.nil?
        invalid_properties.push('invalid value for "service_name", service_name cannot be nil.')
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @service_key.nil?
      return false if @service_name.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param service_key [Object] Object to be assigned
    # @!visibility private
    def service_key=(service_key)
      if service_key.nil?
        fail ArgumentError, 'invalid value for "service_key", service_key cannot be nil.'
      end
      @service_key = service_key
    end

    # Custom attribute writer method with validation
    # @param service_name [Object] Object to be assigned
    # @!visibility private
    def service_name=(service_name)
      if service_name.nil?
        fail ArgumentError, 'invalid value for "service_name", service_name cannot be nil.'
      end
      @service_name = service_name
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          service_key == o.service_key &&
          service_name == o.service_name
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [service_key, service_name].hash
    end
  end
end
