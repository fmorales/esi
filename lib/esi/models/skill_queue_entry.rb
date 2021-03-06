=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module Esi
  # 200 ok object
  class SkillQueueEntry
    # finish_date string
    attr_accessor :finish_date

    # finished_level integer
    attr_accessor :finished_level

    # level_end_sp integer
    attr_accessor :level_end_sp

    # Amount of SP that was in the skill when it started training it's current level. Used to calculate % of current level complete.
    attr_accessor :level_start_sp

    # queue_position integer
    attr_accessor :queue_position

    # skill_id integer
    attr_accessor :skill_id

    # start_date string
    attr_accessor :start_date

    # training_start_sp integer
    attr_accessor :training_start_sp


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'finish_date' => :'finish_date',
        :'finished_level' => :'finished_level',
        :'level_end_sp' => :'level_end_sp',
        :'level_start_sp' => :'level_start_sp',
        :'queue_position' => :'queue_position',
        :'skill_id' => :'skill_id',
        :'start_date' => :'start_date',
        :'training_start_sp' => :'training_start_sp'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'finish_date' => :'DateTime',
        :'finished_level' => :'Integer',
        :'level_end_sp' => :'Integer',
        :'level_start_sp' => :'Integer',
        :'queue_position' => :'Integer',
        :'skill_id' => :'Integer',
        :'start_date' => :'DateTime',
        :'training_start_sp' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'finish_date')
        self.finish_date = attributes[:'finish_date']
      end

      if attributes.has_key?(:'finished_level')
        self.finished_level = attributes[:'finished_level']
      end

      if attributes.has_key?(:'level_end_sp')
        self.level_end_sp = attributes[:'level_end_sp']
      end

      if attributes.has_key?(:'level_start_sp')
        self.level_start_sp = attributes[:'level_start_sp']
      end

      if attributes.has_key?(:'queue_position')
        self.queue_position = attributes[:'queue_position']
      end

      if attributes.has_key?(:'skill_id')
        self.skill_id = attributes[:'skill_id']
      end

      if attributes.has_key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.has_key?(:'training_start_sp')
        self.training_start_sp = attributes[:'training_start_sp']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @finished_level.nil?
        invalid_properties.push("invalid value for 'finished_level', finished_level cannot be nil.")
      end

      if @finished_level > 5
        invalid_properties.push("invalid value for 'finished_level', must be smaller than or equal to 5.")
      end

      if @finished_level < 0
        invalid_properties.push("invalid value for 'finished_level', must be greater than or equal to 0.")
      end

      if @queue_position.nil?
        invalid_properties.push("invalid value for 'queue_position', queue_position cannot be nil.")
      end

      if @skill_id.nil?
        invalid_properties.push("invalid value for 'skill_id', skill_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @finished_level.nil?
      return false if @finished_level > 5
      return false if @finished_level < 0
      return false if @queue_position.nil?
      return false if @skill_id.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] finished_level Value to be assigned
    def finished_level=(finished_level)
      if finished_level.nil?
        fail ArgumentError, "finished_level cannot be nil"
      end

      if finished_level > 5
        fail ArgumentError, "invalid value for 'finished_level', must be smaller than or equal to 5."
      end

      if finished_level < 0
        fail ArgumentError, "invalid value for 'finished_level', must be greater than or equal to 0."
      end

      @finished_level = finished_level
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          finish_date == o.finish_date &&
          finished_level == o.finished_level &&
          level_end_sp == o.level_end_sp &&
          level_start_sp == o.level_start_sp &&
          queue_position == o.queue_position &&
          skill_id == o.skill_id &&
          start_date == o.start_date &&
          training_start_sp == o.training_start_sp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [finish_date, finished_level, level_end_sp, level_start_sp, queue_position, skill_id, start_date, training_start_sp].hash
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
