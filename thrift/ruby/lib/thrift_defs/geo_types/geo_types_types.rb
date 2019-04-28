#
# Autogenerated by Thrift Compiler (0.12.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

module ThriftDefs
  module GeoTypes
    module StateCode
      AL = 1
      AK = 2
      AZ = 3
      AR = 4
      CA = 5
      CO = 6
      CT = 7
      DE = 8
      DC = 9
      FL = 10
      GA = 11
      HI = 12
      ID = 13
      IL = 14
      IN = 15
      IA = 16
      KS = 17
      KY = 18
      LA = 19
      ME = 20
      MD = 21
      MA = 22
      MI = 23
      MN = 24
      MS = 25
      MO = 26
      MT = 27
      NE = 28
      NV = 29
      NH = 30
      NJ = 31
      NM = 32
      NY = 33
      NC = 34
      ND = 35
      OH = 36
      OK = 37
      OR = 38
      PA = 39
      RI = 40
      SC = 41
      SD = 42
      TN = 43
      TX = 44
      UT = 45
      VT = 46
      VA = 47
      WA = 48
      WV = 49
      WI = 50
      WY = 51
      AA = 52
      AE = 53
      AP = 54
      VALUE_MAP = {1 => "AL", 2 => "AK", 3 => "AZ", 4 => "AR", 5 => "CA", 6 => "CO", 7 => "CT", 8 => "DE", 9 => "DC", 10 => "FL", 11 => "GA", 12 => "HI", 13 => "ID", 14 => "IL", 15 => "IN", 16 => "IA", 17 => "KS", 18 => "KY", 19 => "LA", 20 => "ME", 21 => "MD", 22 => "MA", 23 => "MI", 24 => "MN", 25 => "MS", 26 => "MO", 27 => "MT", 28 => "NE", 29 => "NV", 30 => "NH", 31 => "NJ", 32 => "NM", 33 => "NY", 34 => "NC", 35 => "ND", 36 => "OH", 37 => "OK", 38 => "OR", 39 => "PA", 40 => "RI", 41 => "SC", 42 => "SD", 43 => "TN", 44 => "TX", 45 => "UT", 46 => "VT", 47 => "VA", 48 => "WA", 49 => "WV", 50 => "WI", 51 => "WY", 52 => "AA", 53 => "AE", 54 => "AP"}
      VALID_VALUES = Set.new([AL, AK, AZ, AR, CA, CO, CT, DE, DC, FL, GA, HI, ID, IL, IN, IA, KS, KY, LA, ME, MD, MA, MI, MN, MS, MO, MT, NE, NV, NH, NJ, NM, NY, NC, ND, OH, OK, OR, PA, RI, SC, SD, TN, TX, UT, VT, VA, WA, WV, WI, WY, AA, AE, AP]).freeze
    end

    class Coordinate; end

    class Address; end

    class Addresses; end

    class Coordinate
      include ::Thrift::Struct, ::Thrift::Struct_Union
      LAT = 1
      LNG = 2

      FIELDS = {
        LAT => {:type => ::Thrift::Types::DOUBLE, :name => 'lat'},
        LNG => {:type => ::Thrift::Types::DOUBLE, :name => 'lng'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Address
      include ::Thrift::Struct, ::Thrift::Struct_Union
      STREET = 1
      STREET_NAME = 2
      STREET_NUMBER = 3
      UNIT_DESIGNATOR = 4
      APT_NUMBER = 5
      CITY = 6
      STATE = 7
      ZIP_CODE = 8

      FIELDS = {
        STREET => {:type => ::Thrift::Types::STRING, :name => 'street'},
        STREET_NAME => {:type => ::Thrift::Types::STRING, :name => 'street_name'},
        STREET_NUMBER => {:type => ::Thrift::Types::STRING, :name => 'street_number'},
        UNIT_DESIGNATOR => {:type => ::Thrift::Types::STRING, :name => 'unit_designator'},
        APT_NUMBER => {:type => ::Thrift::Types::STRING, :name => 'apt_number'},
        CITY => {:type => ::Thrift::Types::STRING, :name => 'city'},
        STATE => {:type => ::Thrift::Types::I32, :name => 'state', :enum_class => ::ThriftDefs::GeoTypes::StateCode},
        ZIP_CODE => {:type => ::Thrift::Types::STRING, :name => 'zip_code'}
      }

      def struct_fields; FIELDS; end

      def validate
        unless @state.nil? || ::ThriftDefs::GeoTypes::StateCode::VALID_VALUES.include?(@state)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field state!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Addresses
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ADDRESSES = 1

      FIELDS = {
        ADDRESSES => {:type => ::Thrift::Types::LIST, :name => 'addresses', :element => {:type => ::Thrift::Types::STRUCT, :class => ::ThriftDefs::GeoTypes::Address}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end