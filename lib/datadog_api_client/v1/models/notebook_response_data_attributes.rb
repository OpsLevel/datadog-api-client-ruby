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
  # The attributes of a notebook.
  class NotebookResponseDataAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Attributes of user object returned by the API.
    attr_accessor :author

    # List of cells to display in the notebook.
    attr_accessor :cells

    # UTC time stamp for when the notebook was created.
    attr_accessor :created

    # Metadata associated with the notebook.
    attr_accessor :metadata

    # UTC time stamp for when the notebook was last modified.
    attr_accessor :modified

    # The name of the notebook.
    attr_accessor :name

    # Publication status of the notebook. For now, always "published".
    attr_accessor :status

    # Notebook global timeframe.
    attr_accessor :time

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'author' => :'author',
        :'cells' => :'cells',
        :'created' => :'created',
        :'metadata' => :'metadata',
        :'modified' => :'modified',
        :'name' => :'name',
        :'status' => :'status',
        :'time' => :'time'
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
        :'author' => :'NotebookAuthor',
        :'cells' => :'Array<NotebookCellResponse>',
        :'created' => :'Time',
        :'metadata' => :'NotebookMetadata',
        :'modified' => :'Time',
        :'name' => :'String',
        :'status' => :'NotebookStatus',
        :'time' => :'NotebookGlobalTime'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::NotebookResponseDataAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::NotebookResponseDataAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'author')
        self.author = attributes[:'author']
      end

      if attributes.key?(:'cells')
        if (value = attributes[:'cells']).is_a?(Array)
          self.cells = value
        end
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'modified')
        self.modified = attributes[:'modified']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = 'published'
      end

      if attributes.key?(:'time')
        self.time = attributes[:'time']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if @cells.nil?
        invalid_properties.push('invalid value for "cells", cells cannot be nil.')
      end
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end
      if @name.to_s.length > 80
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 80.')
      end
      if @name.to_s.length < 0
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 0.')
      end
      if @time.nil?
        invalid_properties.push('invalid value for "time", time cannot be nil.')
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @cells.nil?
      return false if @name.nil?
      return false if @name.to_s.length > 80
      return false if @name.to_s.length < 0
      return false if @time.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param cells [Object] Object to be assigned
    # @!visibility private
    def cells=(cells)
      if cells.nil?
        fail ArgumentError, 'invalid value for "cells", cells cannot be nil.'
      end
      @cells = cells
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      if name.to_s.length > 80
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 80.'
      end
      if name.to_s.length < 0
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 0.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param time [Object] Object to be assigned
    # @!visibility private
    def time=(time)
      if time.nil?
        fail ArgumentError, 'invalid value for "time", time cannot be nil.'
      end
      @time = time
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          author == o.author &&
          cells == o.cells &&
          created == o.created &&
          metadata == o.metadata &&
          modified == o.modified &&
          name == o.name &&
          status == o.status &&
          time == o.time
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
      [author, cells, created, metadata, modified, name, status, time].hash
    end
  end
end
