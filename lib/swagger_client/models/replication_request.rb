=begin
#DPN API

#Digital Preservation Network

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module SwaggerClient
  # A Replication Request is the control construct that represents and manages the exchange of a bag from an administrative or ingest node to another node, which then becomes a replicating node for the bag. 
  class ReplicationRequest
    # UUIDv4 of the associated bag. _(read only)_ 
    attr_accessor :bag

    # DPN-formatted date-time when this record was first created. _(read only)_ 
    attr_accessor :created_at

    # DPN-formatted date-time when this record was las updated. 
    attr_accessor :updated_at

    # UUIDv4 that uniquely identifies this replication transfer request. _(read only)_ 
    attr_accessor :replication_id

    # Namespace of the node sending the bag. This is the node that generated this request. _(read only)_ 
    attr_accessor :from_node

    # Namespace of the node receiving the bag. Must not be a replicating_node for the bag being transferred. 
    attr_accessor :to_node

    # Name of the fixity algorithm expected for the receipt. _(read only)_ 
    attr_accessor :fixity_algorithm

    # null or the nonce to be used for verification. _(read only)_ 
    attr_accessor :fixity_nonce

    # null or the string of the fixity value calculated by the to_node after transferring the bag to its staging area.  _(Once set to a value, this field is read only.)_ 
    attr_accessor :fixity_value

    # Name of the transfer protocol. _(read only)_ 
    attr_accessor :protocol

    # URL of the bag to be transferred. _(read only)_ 
    attr_accessor :link

    # Set by the from_node after it receives a correct fixity_value to instruct the to_node to complete the replication.  _(Once set to true, this field is read only.)_ 
    attr_accessor :store_requested

    # Set by the to_node to indicate the bag has been transferred into its storage repository from the staging area.  The to_node promises to fulfill replicating node duties by setting this field.  Must not be set before store_requested. _(Once set to true, this field is read only.)_ 
    attr_accessor :stored

    # Set by either node to immediately end the transaction. _(Once set to true, the entire record is read-only)_ 
    attr_accessor :cancelled

    # null or the reason for cancelling.  The cancel_reason must not be treated as an actionable field; it is only for debugging and analytics. Can only be set at the same time as cancelled. 
    attr_accessor :cancel_reason

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
        :'bag' => :'bag',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'replication_id' => :'replication_id',
        :'from_node' => :'from_node',
        :'to_node' => :'to_node',
        :'fixity_algorithm' => :'fixity_algorithm',
        :'fixity_nonce' => :'fixity_nonce',
        :'fixity_value' => :'fixity_value',
        :'protocol' => :'protocol',
        :'link' => :'link',
        :'store_requested' => :'store_requested',
        :'stored' => :'stored',
        :'cancelled' => :'cancelled',
        :'cancel_reason' => :'cancel_reason'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'bag' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'replication_id' => :'String',
        :'from_node' => :'String',
        :'to_node' => :'String',
        :'fixity_algorithm' => :'String',
        :'fixity_nonce' => :'String',
        :'fixity_value' => :'String',
        :'protocol' => :'String',
        :'link' => :'String',
        :'store_requested' => :'BOOLEAN',
        :'stored' => :'BOOLEAN',
        :'cancelled' => :'BOOLEAN',
        :'cancel_reason' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'bag')
        self.bag = attributes[:'bag']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'replication_id')
        self.replication_id = attributes[:'replication_id']
      end

      if attributes.has_key?(:'from_node')
        self.from_node = attributes[:'from_node']
      end

      if attributes.has_key?(:'to_node')
        self.to_node = attributes[:'to_node']
      end

      if attributes.has_key?(:'fixity_algorithm')
        self.fixity_algorithm = attributes[:'fixity_algorithm']
      end

      if attributes.has_key?(:'fixity_nonce')
        self.fixity_nonce = attributes[:'fixity_nonce']
      end

      if attributes.has_key?(:'fixity_value')
        self.fixity_value = attributes[:'fixity_value']
      end

      if attributes.has_key?(:'protocol')
        self.protocol = attributes[:'protocol']
      end

      if attributes.has_key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.has_key?(:'store_requested')
        self.store_requested = attributes[:'store_requested']
      else
        self.store_requested = false
      end

      if attributes.has_key?(:'stored')
        self.stored = attributes[:'stored']
      else
        self.stored = false
      end

      if attributes.has_key?(:'cancelled')
        self.cancelled = attributes[:'cancelled']
      else
        self.cancelled = false
      end

      if attributes.has_key?(:'cancel_reason')
        self.cancel_reason = attributes[:'cancel_reason']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @bag.nil?
      return false if @replication_id.nil?
      return false if @from_node.nil?
      return false if @to_node.nil?
      return false if @fixity_algorithm.nil?
      return false if @protocol.nil?
      return false if @link.nil?
      return false if @store_requested.nil?
      return false if @stored.nil?
      return false if @cancelled.nil?
      cancel_reason_validator = EnumAttributeValidator.new('String', ["reject", "bag_invalid", "fixity_reject", "other"])
      return false unless cancel_reason_validator.valid?(@cancel_reason)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancel_reason Object to be assigned
    def cancel_reason=(cancel_reason)
      validator = EnumAttributeValidator.new('String', ["reject", "bag_invalid", "fixity_reject", "other"])
      unless validator.valid?(cancel_reason)
        fail ArgumentError, "invalid value for 'cancel_reason', must be one of #{validator.allowable_values}."
      end
      @cancel_reason = cancel_reason
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          bag == o.bag &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          replication_id == o.replication_id &&
          from_node == o.from_node &&
          to_node == o.to_node &&
          fixity_algorithm == o.fixity_algorithm &&
          fixity_nonce == o.fixity_nonce &&
          fixity_value == o.fixity_value &&
          protocol == o.protocol &&
          link == o.link &&
          store_requested == o.store_requested &&
          stored == o.stored &&
          cancelled == o.cancelled &&
          cancel_reason == o.cancel_reason
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [bag, created_at, updated_at, replication_id, from_node, to_node, fixity_algorithm, fixity_nonce, fixity_value, protocol, link, store_requested, stored, cancelled, cancel_reason].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
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