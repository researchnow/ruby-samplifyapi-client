=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'date'

module SamplifyAPIClient
  class RepricePayload
    # Incident Rate
    attr_accessor :ir

    # Length of Interview
    attr_accessor :loi

    # Approval ID
    attr_accessor :approval_id

    # Calculated Maximum Price
    attr_accessor :calculated_max_price

    # Completes
    attr_accessor :completes

    # New Estimated Cost
    attr_accessor :new_estimated_cost

    # Original Cost Per Incident
    attr_accessor :original_cpi

    # Original Estimated Cost
    attr_accessor :original_estimated_cost

    # Project ID
    attr_accessor :project_id

    # Quota Group ID
    attr_accessor :quota_group_id

    # Reason for event: UNKNOWN, LOI_CHANGE, IR_CHANGE
    attr_accessor :reason

    # Request New Price
    attr_accessor :request_new_price

    # Required Completes
    attr_accessor :required_completes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ir' => :'IR',
        :'loi' => :'LOI',
        :'approval_id' => :'approvalId',
        :'calculated_max_price' => :'calculatedMaxPrice',
        :'completes' => :'completes',
        :'new_estimated_cost' => :'newEstimatedCost',
        :'original_cpi' => :'originalCPI',
        :'original_estimated_cost' => :'originalEstimatedCost',
        :'project_id' => :'projectId',
        :'quota_group_id' => :'quotaGroupId',
        :'reason' => :'reason',
        :'request_new_price' => :'requestNewPrice',
        :'required_completes' => :'requiredCompletes'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'ir' => :'Float',
        :'loi' => :'Integer',
        :'approval_id' => :'String',
        :'calculated_max_price' => :'Float',
        :'completes' => :'Integer',
        :'new_estimated_cost' => :'Float',
        :'original_cpi' => :'Float',
        :'original_estimated_cost' => :'Float',
        :'project_id' => :'Integer',
        :'quota_group_id' => :'Integer',
        :'reason' => :'String',
        :'request_new_price' => :'Float',
        :'required_completes' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'IR')
        self.ir = attributes[:'IR']
      end

      if attributes.has_key?(:'LOI')
        self.loi = attributes[:'LOI']
      end

      if attributes.has_key?(:'approvalId')
        self.approval_id = attributes[:'approvalId']
      end

      if attributes.has_key?(:'calculatedMaxPrice')
        self.calculated_max_price = attributes[:'calculatedMaxPrice']
      end

      if attributes.has_key?(:'completes')
        self.completes = attributes[:'completes']
      end

      if attributes.has_key?(:'newEstimatedCost')
        self.new_estimated_cost = attributes[:'newEstimatedCost']
      end

      if attributes.has_key?(:'originalCPI')
        self.original_cpi = attributes[:'originalCPI']
      end

      if attributes.has_key?(:'originalEstimatedCost')
        self.original_estimated_cost = attributes[:'originalEstimatedCost']
      end

      if attributes.has_key?(:'projectId')
        self.project_id = attributes[:'projectId']
      end

      if attributes.has_key?(:'quotaGroupId')
        self.quota_group_id = attributes[:'quotaGroupId']
      end

      if attributes.has_key?(:'reason')
        self.reason = attributes[:'reason']
      end

      if attributes.has_key?(:'requestNewPrice')
        self.request_new_price = attributes[:'requestNewPrice']
      end

      if attributes.has_key?(:'requiredCompletes')
        self.required_completes = attributes[:'requiredCompletes']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @ir.nil?
        invalid_properties.push('invalid value for "ir", ir cannot be nil.')
      end

      if @loi.nil?
        invalid_properties.push('invalid value for "loi", loi cannot be nil.')
      end

      if @approval_id.nil?
        invalid_properties.push('invalid value for "approval_id", approval_id cannot be nil.')
      end

      if @calculated_max_price.nil?
        invalid_properties.push('invalid value for "calculated_max_price", calculated_max_price cannot be nil.')
      end

      if @completes.nil?
        invalid_properties.push('invalid value for "completes", completes cannot be nil.')
      end

      if @new_estimated_cost.nil?
        invalid_properties.push('invalid value for "new_estimated_cost", new_estimated_cost cannot be nil.')
      end

      if @original_cpi.nil?
        invalid_properties.push('invalid value for "original_cpi", original_cpi cannot be nil.')
      end

      if @original_estimated_cost.nil?
        invalid_properties.push('invalid value for "original_estimated_cost", original_estimated_cost cannot be nil.')
      end

      if @project_id.nil?
        invalid_properties.push('invalid value for "project_id", project_id cannot be nil.')
      end

      if @quota_group_id.nil?
        invalid_properties.push('invalid value for "quota_group_id", quota_group_id cannot be nil.')
      end

      if @reason.nil?
        invalid_properties.push('invalid value for "reason", reason cannot be nil.')
      end

      if @request_new_price.nil?
        invalid_properties.push('invalid value for "request_new_price", request_new_price cannot be nil.')
      end

      if @required_completes.nil?
        invalid_properties.push('invalid value for "required_completes", required_completes cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @ir.nil?
      return false if @loi.nil?
      return false if @approval_id.nil?
      return false if @calculated_max_price.nil?
      return false if @completes.nil?
      return false if @new_estimated_cost.nil?
      return false if @original_cpi.nil?
      return false if @original_estimated_cost.nil?
      return false if @project_id.nil?
      return false if @quota_group_id.nil?
      return false if @reason.nil?
      return false if @request_new_price.nil?
      return false if @required_completes.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ir == o.ir &&
          loi == o.loi &&
          approval_id == o.approval_id &&
          calculated_max_price == o.calculated_max_price &&
          completes == o.completes &&
          new_estimated_cost == o.new_estimated_cost &&
          original_cpi == o.original_cpi &&
          original_estimated_cost == o.original_estimated_cost &&
          project_id == o.project_id &&
          quota_group_id == o.quota_group_id &&
          reason == o.reason &&
          request_new_price == o.request_new_price &&
          required_completes == o.required_completes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [ir, loi, approval_id, calculated_max_price, completes, new_estimated_cost, original_cpi, original_estimated_cost, project_id, quota_group_id, reason, request_new_price, required_completes].hash
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
