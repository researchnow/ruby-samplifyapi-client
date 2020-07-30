=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'date'

module SamplifyAPIClient
  class EndLinks
    # Complete link URL
    attr_accessor :complete

    # Over quota link URL
    attr_accessor :overquota

    # Screen out link URL
    attr_accessor :screenout

    # Security Key 1
    attr_accessor :security_key1

    # Security Key 2
    attr_accessor :security_key2

    # Security Level: NONE, BASIC, MEDIUM, HIGH, or SIGNED_URL
    attr_accessor :security_level

    # Signed URL Security Key ID
    attr_accessor :signed_url_security_key_id

    # Signed URL Security Secret Key
    attr_accessor :signed_url_security_secret_key

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'complete' => :'complete',
        :'overquota' => :'overquota',
        :'screenout' => :'screenout',
        :'security_key1' => :'securityKey1',
        :'security_key2' => :'securityKey2',
        :'security_level' => :'securityLevel',
        :'signed_url_security_key_id' => :'signedURLSecurityKeyID',
        :'signed_url_security_secret_key' => :'signedURLSecuritySecretKey'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'complete' => :'String',
        :'overquota' => :'String',
        :'screenout' => :'String',
        :'security_key1' => :'String',
        :'security_key2' => :'String',
        :'security_level' => :'String',
        :'signed_url_security_key_id' => :'String',
        :'signed_url_security_secret_key' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'complete')
        self.complete = attributes[:'complete']
      end

      if attributes.has_key?(:'overquota')
        self.overquota = attributes[:'overquota']
      end

      if attributes.has_key?(:'screenout')
        self.screenout = attributes[:'screenout']
      end

      if attributes.has_key?(:'securityKey1')
        self.security_key1 = attributes[:'securityKey1']
      end

      if attributes.has_key?(:'securityKey2')
        self.security_key2 = attributes[:'securityKey2']
      end

      if attributes.has_key?(:'securityLevel')
        self.security_level = attributes[:'securityLevel']
      end

      if attributes.has_key?(:'signedURLSecurityKeyID')
        self.signed_url_security_key_id = attributes[:'signedURLSecurityKeyID']
      end

      if attributes.has_key?(:'signedURLSecuritySecretKey')
        self.signed_url_security_secret_key = attributes[:'signedURLSecuritySecretKey']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @complete.nil?
        invalid_properties.push('invalid value for "complete", complete cannot be nil.')
      end

      if @overquota.nil?
        invalid_properties.push('invalid value for "overquota", overquota cannot be nil.')
      end

      if @screenout.nil?
        invalid_properties.push('invalid value for "screenout", screenout cannot be nil.')
      end

      if @security_level.nil?
        invalid_properties.push('invalid value for "security_level", security_level cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @complete.nil?
      return false if @overquota.nil?
      return false if @screenout.nil?
      return false if @security_level.nil?
      security_level_validator = EnumAttributeValidator.new('String', ['NONE', 'BASIC', 'MEDIUM', 'HIGH', 'SIGNED_URL'])
      return false unless security_level_validator.valid?(@security_level)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] security_level Object to be assigned
    def security_level=(security_level)
      validator = EnumAttributeValidator.new('String', ['NONE', 'BASIC', 'MEDIUM', 'HIGH', 'SIGNED_URL'])
      unless validator.valid?(security_level)
        fail ArgumentError, 'invalid value for "security_level", must be one of #{validator.allowable_values}.'
      end
      @security_level = security_level
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          complete == o.complete &&
          overquota == o.overquota &&
          screenout == o.screenout &&
          security_key1 == o.security_key1 &&
          security_key2 == o.security_key2 &&
          security_level == o.security_level &&
          signed_url_security_key_id == o.signed_url_security_key_id &&
          signed_url_security_secret_key == o.signed_url_security_secret_key
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [complete, overquota, screenout, security_key1, security_key2, security_level, signed_url_security_key_id, signed_url_security_secret_key].hash
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
