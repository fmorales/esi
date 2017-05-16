=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module Esi
  # Full details of a specific event
  class Event
    # date string
    attr_accessor :date

    # Length in minutes
    attr_accessor :duration

    # event_id integer
    attr_accessor :event_id

    # importance integer
    attr_accessor :importance

    # owner_id integer
    attr_accessor :owner_id

    # owner_name string
    attr_accessor :owner_name

    # owner_type string
    attr_accessor :owner_type

    # response string
    attr_accessor :response

    # text string
    attr_accessor :text

    # title string
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
        :'date' => :'date',
        :'duration' => :'duration',
        :'event_id' => :'event_id',
        :'importance' => :'importance',
        :'owner_id' => :'owner_id',
        :'owner_name' => :'owner_name',
        :'owner_type' => :'owner_type',
        :'response' => :'response',
        :'text' => :'text',
        :'title' => :'title'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'date' => :'DateTime',
        :'duration' => :'Integer',
        :'event_id' => :'Integer',
        :'importance' => :'Integer',
        :'owner_id' => :'Integer',
        :'owner_name' => :'String',
        :'owner_type' => :'String',
        :'response' => :'String',
        :'text' => :'String',
        :'title' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.has_key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end

      if attributes.has_key?(:'importance')
        self.importance = attributes[:'importance']
      end

      if attributes.has_key?(:'owner_id')
        self.owner_id = attributes[:'owner_id']
      end

      if attributes.has_key?(:'owner_name')
        self.owner_name = attributes[:'owner_name']
      end

      if attributes.has_key?(:'owner_type')
        self.owner_type = attributes[:'owner_type']
      end

      if attributes.has_key?(:'response')
        self.response = attributes[:'response']
      end

      if attributes.has_key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @date.nil?
        invalid_properties.push("invalid value for 'date', date cannot be nil.")
      end

      if @duration.nil?
        invalid_properties.push("invalid value for 'duration', duration cannot be nil.")
      end

      if @event_id.nil?
        invalid_properties.push("invalid value for 'event_id', event_id cannot be nil.")
      end

      if @importance.nil?
        invalid_properties.push("invalid value for 'importance', importance cannot be nil.")
      end

      if @owner_id.nil?
        invalid_properties.push("invalid value for 'owner_id', owner_id cannot be nil.")
      end

      if @owner_name.nil?
        invalid_properties.push("invalid value for 'owner_name', owner_name cannot be nil.")
      end

      if @owner_type.nil?
        invalid_properties.push("invalid value for 'owner_type', owner_type cannot be nil.")
      end

      if @response.nil?
        invalid_properties.push("invalid value for 'response', response cannot be nil.")
      end

      if @text.nil?
        invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end

      if @title.nil?
        invalid_properties.push("invalid value for 'title', title cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @date.nil?
      return false if @duration.nil?
      return false if @event_id.nil?
      return false if @importance.nil?
      return false if @owner_id.nil?
      return false if @owner_name.nil?
      return false if @owner_type.nil?
      owner_type_validator = EnumAttributeValidator.new('String', ["eve_server", "corporation", "faction", "character", "alliance"])
      return false unless owner_type_validator.valid?(@owner_type)
      return false if @response.nil?
      return false if @text.nil?
      return false if @title.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] owner_type Object to be assigned
    def owner_type=(owner_type)
      validator = EnumAttributeValidator.new('String', ["eve_server", "corporation", "faction", "character", "alliance"])
      unless validator.valid?(owner_type)
        fail ArgumentError, "invalid value for 'owner_type', must be one of #{validator.allowable_values}."
      end
      @owner_type = owner_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date == o.date &&
          duration == o.duration &&
          event_id == o.event_id &&
          importance == o.importance &&
          owner_id == o.owner_id &&
          owner_name == o.owner_name &&
          owner_type == o.owner_type &&
          response == o.response &&
          text == o.text &&
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
      [date, duration, event_id, importance, owner_id, owner_name, owner_type, response, text, title].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = Esi.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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