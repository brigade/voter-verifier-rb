#
# Autogenerated by Thrift Compiler (0.12.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

module ThriftDefs
  module AuthTypes
    module EntityRole
      GUEST = 0
      USER = 1
      VALUE_MAP = {0 => "GUEST", 1 => "USER"}
      VALID_VALUES = Set.new([GUEST, USER]).freeze
    end

    class Entity; end

    class Entity
      include ::Thrift::Struct, ::Thrift::Struct_Union
      UUID = 1
      ROLE = 2

      FIELDS = {
        UUID => {:type => ::Thrift::Types::STRING, :name => 'uuid', :optional => true},
        ROLE => {:type => ::Thrift::Types::I32, :name => 'role', :enum_class => ::ThriftDefs::AuthTypes::EntityRole}
      }

      def struct_fields; FIELDS; end

      def validate
        unless @role.nil? || ::ThriftDefs::AuthTypes::EntityRole::VALID_VALUES.include?(@role)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field role!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end
