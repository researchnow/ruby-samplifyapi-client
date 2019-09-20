=begin
#Samplify API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'date'

module SamplifyAPIClient
  class ProjectResponseData
    attr_accessor :author

    attr_accessor :category

    # Timestamp of when the project was created
    attr_accessor :created_at

    # List of emails to subscribe to notifications
    attr_accessor :devices

    # Sales Order Detail ID of the line item.
    attr_accessor :dynata_line_item_reference_id

    attr_accessor :exclusions

    # Unique external project ID
    attr_accessor :ext_project_id

    # Project job number
    attr_accessor :job_number

    # List of line items for the project.
    attr_accessor :line_items

    # List of emails to subscribe to notifications
    attr_accessor :notification_emails

    # Inclusion/Exclusions on the project
    attr_accessor :respondent_filters

    # Current state of the project
    attr_accessor :state

    # Timestamp of when the project last changed its state
    attr_accessor :state_last_updated_at

    # Project title
    attr_accessor :title

    # Timestamp of when the project was updated
    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'author' => :'author',
        :'category' => :'category',
        :'created_at' => :'createdAt',
        :'devices' => :'devices',
        :'dynata_line_item_reference_id' => :'dynataLineItemReferenceId',
        :'exclusions' => :'exclusions',
        :'ext_project_id' => :'extProjectId',
        :'job_number' => :'jobNumber',
        :'line_items' => :'lineItems',
        :'notification_emails' => :'notificationEmails',
        :'respondent_filters' => :'respondentFilters',
        :'state' => :'state',
        :'state_last_updated_at' => :'stateLastUpdatedAt',
        :'title' => :'title',
        :'updated_at' => :'updatedAt'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'author' => :'Author',
        :'category' => :'ProjectCategoryData',
        :'created_at' => :'String',
        :'devices' => :'Array<String>',
        :'dynata_line_item_reference_id' => :'String',
        :'exclusions' => :'ExclusionData',
        :'ext_project_id' => :'String',
        :'job_number' => :'String',
        :'line_items' => :'Array<LineItemResponseData>',
        :'notification_emails' => :'Array<String>',
        :'respondent_filters' => :'Array<RespondentFilterData>',
        :'state' => :'String',
        :'state_last_updated_at' => :'String',
        :'title' => :'String',
        :'updated_at' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'author')
        self.author = attributes[:'author']
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'devices')
        if (value = attributes[:'devices']).is_a?(Array)
          self.devices = value
        end
      end

      if attributes.has_key?(:'dynataLineItemReferenceId')
        self.dynata_line_item_reference_id = attributes[:'dynataLineItemReferenceId']
      end

      if attributes.has_key?(:'exclusions')
        self.exclusions = attributes[:'exclusions']
      end

      if attributes.has_key?(:'extProjectId')
        self.ext_project_id = attributes[:'extProjectId']
      end

      if attributes.has_key?(:'jobNumber')
        self.job_number = attributes[:'jobNumber']
      end

      if attributes.has_key?(:'lineItems')
        if (value = attributes[:'lineItems']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.has_key?(:'notificationEmails')
        if (value = attributes[:'notificationEmails']).is_a?(Array)
          self.notification_emails = value
        end
      end

      if attributes.has_key?(:'respondentFilters')
        if (value = attributes[:'respondentFilters']).is_a?(Array)
          self.respondent_filters = value
        end
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'stateLastUpdatedAt')
        self.state_last_updated_at = attributes[:'stateLastUpdatedAt']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'updatedAt')
        self.updated_at = attributes[:'updatedAt']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @category.nil?
        invalid_properties.push('invalid value for "category", category cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @ext_project_id.nil?
        invalid_properties.push('invalid value for "ext_project_id", ext_project_id cannot be nil.')
      end

      if @line_items.nil?
        invalid_properties.push('invalid value for "line_items", line_items cannot be nil.')
      end

      if @notification_emails.nil?
        invalid_properties.push('invalid value for "notification_emails", notification_emails cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @state_last_updated_at.nil?
        invalid_properties.push('invalid value for "state_last_updated_at", state_last_updated_at cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @category.nil?
      return false if @created_at.nil?
      return false if @ext_project_id.nil?
      return false if @line_items.nil?
      return false if @notification_emails.nil?
      return false if @state.nil?
      return false if @state_last_updated_at.nil?
      return false if @title.nil?
      return false if @updated_at.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          author == o.author &&
          category == o.category &&
          created_at == o.created_at &&
          devices == o.devices &&
          dynata_line_item_reference_id == o.dynata_line_item_reference_id &&
          exclusions == o.exclusions &&
          ext_project_id == o.ext_project_id &&
          job_number == o.job_number &&
          line_items == o.line_items &&
          notification_emails == o.notification_emails &&
          respondent_filters == o.respondent_filters &&
          state == o.state &&
          state_last_updated_at == o.state_last_updated_at &&
          title == o.title &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [author, category, created_at, devices, dynata_line_item_reference_id, exclusions, ext_project_id, job_number, line_items, notification_emails, respondent_filters, state, state_last_updated_at, title, updated_at].hash
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
