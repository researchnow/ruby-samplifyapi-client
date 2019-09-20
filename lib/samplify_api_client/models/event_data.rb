=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'date'

module SamplifyAPIClient
  class EventData
    # Event actions
    attr_accessor :actions

    # Time event created at
    attr_accessor :created_at

    # Unique event ID
    attr_accessor :event_id

    # Event Type
    attr_accessor :event_type

    # A unique identifier for your Line Item
    attr_accessor :ext_line_item_id

    # A unique identifier for your project
    attr_accessor :ext_project_id

    # Parent Event ID
    attr_accessor :parent_event_id

    # Event resource
    attr_accessor :resource

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'actions' => :'actions',
        :'created_at' => :'createdAt',
        :'event_id' => :'eventId',
        :'event_type' => :'eventType',
        :'ext_line_item_id' => :'extLineItemId',
        :'ext_project_id' => :'extProjectId',
        :'parent_event_id' => :'parentEventId',
        :'resource' => :'resource'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'actions' => :'Object',
        :'created_at' => :'String',
        :'event_id' => :'Integer',
        :'event_type' => :'String',
        :'ext_line_item_id' => :'String',
        :'ext_project_id' => :'String',
        :'parent_event_id' => :'Integer',
        :'resource' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'actions')
        self.actions = attributes[:'actions']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'eventId')
        self.event_id = attributes[:'eventId']
      end

      if attributes.has_key?(:'eventType')
        self.event_type = attributes[:'eventType']
      end

      if attributes.has_key?(:'extLineItemId')
        self.ext_line_item_id = attributes[:'extLineItemId']
      end

      if attributes.has_key?(:'extProjectId')
        self.ext_project_id = attributes[:'extProjectId']
      end

      if attributes.has_key?(:'parentEventId')
        self.parent_event_id = attributes[:'parentEventId']
      end

      if attributes.has_key?(:'resource')
        self.resource = attributes[:'resource']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @event_id.nil?
        invalid_properties.push('invalid value for "event_id", event_id cannot be nil.')
      end

      if @event_type.nil?
        invalid_properties.push('invalid value for "event_type", event_type cannot be nil.')
      end

      if @ext_line_item_id.nil?
        invalid_properties.push('invalid value for "ext_line_item_id", ext_line_item_id cannot be nil.')
      end

      if @ext_project_id.nil?
        invalid_properties.push('invalid value for "ext_project_id", ext_project_id cannot be nil.')
      end

      if @resource.nil?
        invalid_properties.push('invalid value for "resource", resource cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @created_at.nil?
      return false if @event_id.nil?
      return false if @event_type.nil?
      return false if @ext_line_item_id.nil?
      return false if @ext_project_id.nil?
      return false if @resource.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          actions == o.actions &&
          created_at == o.created_at &&
          event_id == o.event_id &&
          event_type == o.event_type &&
          ext_line_item_id == o.ext_line_item_id &&
          ext_project_id == o.ext_project_id &&
          parent_event_id == o.parent_event_id &&
          resource == o.resource
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [actions, created_at, event_id, event_type, ext_line_item_id, ext_project_id, parent_event_id, resource].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = SamplifyAPIClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
