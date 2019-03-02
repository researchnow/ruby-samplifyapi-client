=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'date'

module SamplifyAPIClient
  class UpdateProjectLineItem
    # ISO country code
    attr_accessor :country_iso_code

    # Duration of the project in days.
    attr_accessor :days_in_field

    # Delivery type: SLOW, BALANCED, FAST or BURST.
    attr_accessor :delivery_type

    # Unique line item Id
    attr_accessor :ext_line_item_id

    # Expected incidence of the survey
    attr_accessor :indicative_incidence

    # ISO language code
    attr_accessor :language_iso_code

    # expected duration of the survey in minutes
    attr_accessor :length_of_interview

    attr_accessor :quota_plan

    # Number of complete required for the line item
    attr_accessor :required_completes

    # Entry link for the user.
    attr_accessor :survey_test_url

    # SurveyTestURL Params of the line item.
    attr_accessor :survey_test_url_params

    # Entry link for the user.
    attr_accessor :survey_url

    # SurveyURL Params of the line item.
    attr_accessor :survey_url_params

    # Data of completes/starts required for the line item
    attr_accessor :targets

    # A title for the line item
    attr_accessor :title

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
        :'country_iso_code' => :'countryISOCode',
        :'days_in_field' => :'daysInField',
        :'delivery_type' => :'deliveryType',
        :'ext_line_item_id' => :'extLineItemId',
        :'indicative_incidence' => :'indicativeIncidence',
        :'language_iso_code' => :'languageISOCode',
        :'length_of_interview' => :'lengthOfInterview',
        :'quota_plan' => :'quotaPlan',
        :'required_completes' => :'requiredCompletes',
        :'survey_test_url' => :'surveyTestURL',
        :'survey_test_url_params' => :'surveyTestURLParams',
        :'survey_url' => :'surveyURL',
        :'survey_url_params' => :'surveyURLParams',
        :'targets' => :'targets',
        :'title' => :'title'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'country_iso_code' => :'String',
        :'days_in_field' => :'Integer',
        :'delivery_type' => :'String',
        :'ext_line_item_id' => :'String',
        :'indicative_incidence' => :'Float',
        :'language_iso_code' => :'String',
        :'length_of_interview' => :'Integer',
        :'quota_plan' => :'QuotaPlanData',
        :'required_completes' => :'Integer',
        :'survey_test_url' => :'String',
        :'survey_test_url_params' => :'Array<URLParam>',
        :'survey_url' => :'String',
        :'survey_url_params' => :'Array<URLParam>',
        :'targets' => :'Array<Target>',
        :'title' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'countryISOCode')
        self.country_iso_code = attributes[:'countryISOCode']
      end

      if attributes.has_key?(:'daysInField')
        self.days_in_field = attributes[:'daysInField']
      end

      if attributes.has_key?(:'deliveryType')
        self.delivery_type = attributes[:'deliveryType']
      end

      if attributes.has_key?(:'extLineItemId')
        self.ext_line_item_id = attributes[:'extLineItemId']
      end

      if attributes.has_key?(:'indicativeIncidence')
        self.indicative_incidence = attributes[:'indicativeIncidence']
      end

      if attributes.has_key?(:'languageISOCode')
        self.language_iso_code = attributes[:'languageISOCode']
      end

      if attributes.has_key?(:'lengthOfInterview')
        self.length_of_interview = attributes[:'lengthOfInterview']
      end

      if attributes.has_key?(:'quotaPlan')
        self.quota_plan = attributes[:'quotaPlan']
      end

      if attributes.has_key?(:'requiredCompletes')
        self.required_completes = attributes[:'requiredCompletes']
      end

      if attributes.has_key?(:'surveyTestURL')
        self.survey_test_url = attributes[:'surveyTestURL']
      end

      if attributes.has_key?(:'surveyTestURLParams')
        if (value = attributes[:'surveyTestURLParams']).is_a?(Array)
          self.survey_test_url_params = value
        end
      end

      if attributes.has_key?(:'surveyURL')
        self.survey_url = attributes[:'surveyURL']
      end

      if attributes.has_key?(:'surveyURLParams')
        if (value = attributes[:'surveyURLParams']).is_a?(Array)
          self.survey_url_params = value
        end
      end

      if attributes.has_key?(:'targets')
        if (value = attributes[:'targets']).is_a?(Array)
          self.targets = value
        end
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @ext_line_item_id.nil?
        invalid_properties.push('invalid value for "ext_line_item_id", ext_line_item_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      delivery_type_validator = EnumAttributeValidator.new('String', ['SLOW', 'BALANCED', 'FAST', 'BURST'])
      return false unless delivery_type_validator.valid?(@delivery_type)
      return false if @ext_line_item_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delivery_type Object to be assigned
    def delivery_type=(delivery_type)
      validator = EnumAttributeValidator.new('String', ['SLOW', 'BALANCED', 'FAST', 'BURST'])
      unless validator.valid?(delivery_type)
        fail ArgumentError, 'invalid value for "delivery_type", must be one of #{validator.allowable_values}.'
      end
      @delivery_type = delivery_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          country_iso_code == o.country_iso_code &&
          days_in_field == o.days_in_field &&
          delivery_type == o.delivery_type &&
          ext_line_item_id == o.ext_line_item_id &&
          indicative_incidence == o.indicative_incidence &&
          language_iso_code == o.language_iso_code &&
          length_of_interview == o.length_of_interview &&
          quota_plan == o.quota_plan &&
          required_completes == o.required_completes &&
          survey_test_url == o.survey_test_url &&
          survey_test_url_params == o.survey_test_url_params &&
          survey_url == o.survey_url &&
          survey_url_params == o.survey_url_params &&
          targets == o.targets &&
          title == o.title
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [country_iso_code, days_in_field, delivery_type, ext_line_item_id, indicative_incidence, language_iso_code, length_of_interview, quota_plan, required_completes, survey_test_url, survey_test_url_params, survey_url, survey_url_params, targets, title].hash
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
