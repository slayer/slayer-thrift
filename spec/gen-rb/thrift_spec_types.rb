#
# Autogenerated by Thrift Compiler (0.7.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#


module SpecNamespace
    module SomeEnum
      ONE = 0
      TWO = 1
      VALUE_MAP = {0 => "ONE", 1 => "TWO"}
      VALID_VALUES = Set.new([ONE, TWO]).freeze
    end

    class Hello
      include ::Thrift::Struct, ::Thrift::Struct_Union
      GREETING = 1

      FIELDS = {
        GREETING => {:type => ::Thrift::Types::STRING, :name => 'greeting', :default => %q"hello world"}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class StructWithSomeEnum
      include ::Thrift::Struct, ::Thrift::Struct_Union
      SOME_ENUM = 1

      FIELDS = {
        SOME_ENUM => {:type => ::Thrift::Types::I32, :name => 'some_enum', :enum_class => SpecNamespace::SomeEnum}
      }

      def struct_fields; FIELDS; end

      def validate
        unless @some_enum.nil? || SpecNamespace::SomeEnum::VALID_VALUES.include?(@some_enum)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field some_enum!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class TestUnion < ::Thrift::Union
      include ::Thrift::Struct_Union
      class << self
        def string_field(val)
          TestUnion.new(:string_field, val)
        end

        def i32_field(val)
          TestUnion.new(:i32_field, val)
        end

        def other_i32_field(val)
          TestUnion.new(:other_i32_field, val)
        end

        def enum_field(val)
          TestUnion.new(:enum_field, val)
        end

        def binary_field(val)
          TestUnion.new(:binary_field, val)
        end
      end

      STRING_FIELD = 1
      I32_FIELD = 2
      OTHER_I32_FIELD = 3
      ENUM_FIELD = 4
      BINARY_FIELD = 5

      FIELDS = {
        # A doc string
        STRING_FIELD => {:type => ::Thrift::Types::STRING, :name => 'string_field'},
        I32_FIELD => {:type => ::Thrift::Types::I32, :name => 'i32_field'},
        OTHER_I32_FIELD => {:type => ::Thrift::Types::I32, :name => 'other_i32_field'},
        ENUM_FIELD => {:type => ::Thrift::Types::I32, :name => 'enum_field', :enum_class => SpecNamespace::SomeEnum},
        BINARY_FIELD => {:type => ::Thrift::Types::STRING, :name => 'binary_field', :binary => true}
      }

      def struct_fields; FIELDS; end

      def validate
        raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
        if get_set_field == :enum_field
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field enum_field!') unless SpecNamespace::SomeEnum::VALID_VALUES.include?(get_value)
        end
      end

      ::Thrift::Union.generate_accessors self
    end

    class Foo
      include ::Thrift::Struct, ::Thrift::Struct_Union
      SIMPLE = 1
      WORDS = 2
      HELLO = 3
      INTS = 4
      COMPLEX = 5
      SHORTS = 6
      OPT_STRING = 7
      MY_BOOL = 8

      FIELDS = {
        SIMPLE => {:type => ::Thrift::Types::I32, :name => 'simple', :default => 53},
        WORDS => {:type => ::Thrift::Types::STRING, :name => 'words', :default => %q"words"},
        HELLO => {:type => ::Thrift::Types::STRUCT, :name => 'hello', :default => SpecNamespace::Hello.new({
          %q"greeting" => %q"hello, world!",
        }), :class => SpecNamespace::Hello},
        INTS => {:type => ::Thrift::Types::LIST, :name => 'ints', :default => [
          1,
          2,
          2,
          3,
        ], :element => {:type => ::Thrift::Types::I32}},
        COMPLEX => {:type => ::Thrift::Types::MAP, :name => 'complex', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::DOUBLE}}},
        SHORTS => {:type => ::Thrift::Types::SET, :name => 'shorts', :default => Set.new([
          5,
          17,
          239,
        ]), :element => {:type => ::Thrift::Types::I16}},
        OPT_STRING => {:type => ::Thrift::Types::STRING, :name => 'opt_string', :optional => true},
        MY_BOOL => {:type => ::Thrift::Types::BOOL, :name => 'my_bool'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Foo2
      include ::Thrift::Struct, ::Thrift::Struct_Union
      MY_BINARY = 1

      FIELDS = {
        MY_BINARY => {:type => ::Thrift::Types::STRING, :name => 'my_binary', :binary => true}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BoolStruct
      include ::Thrift::Struct, ::Thrift::Struct_Union
      YESNO = 1

      FIELDS = {
        YESNO => {:type => ::Thrift::Types::BOOL, :name => 'yesno', :default => true}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class SimpleList
      include ::Thrift::Struct, ::Thrift::Struct_Union
      BOOLS = 1
      BYTES = 2
      I16S = 3
      I32S = 4
      I64S = 5
      DOUBLES = 6
      STRINGS = 7
      MAPS = 8
      LISTS = 9
      SETS = 10
      HELLOS = 11

      FIELDS = {
        BOOLS => {:type => ::Thrift::Types::LIST, :name => 'bools', :element => {:type => ::Thrift::Types::BOOL}},
        BYTES => {:type => ::Thrift::Types::LIST, :name => 'bytes', :element => {:type => ::Thrift::Types::BYTE}},
        I16S => {:type => ::Thrift::Types::LIST, :name => 'i16s', :element => {:type => ::Thrift::Types::I16}},
        I32S => {:type => ::Thrift::Types::LIST, :name => 'i32s', :element => {:type => ::Thrift::Types::I32}},
        I64S => {:type => ::Thrift::Types::LIST, :name => 'i64s', :element => {:type => ::Thrift::Types::I64}},
        DOUBLES => {:type => ::Thrift::Types::LIST, :name => 'doubles', :element => {:type => ::Thrift::Types::DOUBLE}},
        STRINGS => {:type => ::Thrift::Types::LIST, :name => 'strings', :element => {:type => ::Thrift::Types::STRING}},
        MAPS => {:type => ::Thrift::Types::LIST, :name => 'maps', :element => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::I16}, :value => {:type => ::Thrift::Types::I16}}},
        LISTS => {:type => ::Thrift::Types::LIST, :name => 'lists', :element => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::I16}}},
        SETS => {:type => ::Thrift::Types::LIST, :name => 'sets', :element => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::I16}}},
        HELLOS => {:type => ::Thrift::Types::LIST, :name => 'hellos', :element => {:type => ::Thrift::Types::STRUCT, :class => SpecNamespace::Hello}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Xception < ::Thrift::Exception
      include ::Thrift::Struct, ::Thrift::Struct_Union
      MESSAGE = 1
      CODE = 2

      FIELDS = {
        MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'},
        CODE => {:type => ::Thrift::Types::I32, :name => 'code', :default => 1}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class My_union < ::Thrift::Union
      include ::Thrift::Struct_Union
      class << self
        def im_true(val)
          My_union.new(:im_true, val)
        end

        def a_bite(val)
          My_union.new(:a_bite, val)
        end

        def integer16(val)
          My_union.new(:integer16, val)
        end

        def integer32(val)
          My_union.new(:integer32, val)
        end

        def integer64(val)
          My_union.new(:integer64, val)
        end

        def double_precision(val)
          My_union.new(:double_precision, val)
        end

        def some_characters(val)
          My_union.new(:some_characters, val)
        end

        def other_i32(val)
          My_union.new(:other_i32, val)
        end

        def some_enum(val)
          My_union.new(:some_enum, val)
        end

        def my_map(val)
          My_union.new(:my_map, val)
        end
      end

      IM_TRUE = 1
      A_BITE = 2
      INTEGER16 = 3
      INTEGER32 = 4
      INTEGER64 = 5
      DOUBLE_PRECISION = 6
      SOME_CHARACTERS = 7
      OTHER_I32 = 8
      SOME_ENUM = 9
      MY_MAP = 10

      FIELDS = {
        IM_TRUE => {:type => ::Thrift::Types::BOOL, :name => 'im_true'},
        A_BITE => {:type => ::Thrift::Types::BYTE, :name => 'a_bite'},
        INTEGER16 => {:type => ::Thrift::Types::I16, :name => 'integer16'},
        INTEGER32 => {:type => ::Thrift::Types::I32, :name => 'integer32'},
        INTEGER64 => {:type => ::Thrift::Types::I64, :name => 'integer64'},
        DOUBLE_PRECISION => {:type => ::Thrift::Types::DOUBLE, :name => 'double_precision'},
        SOME_CHARACTERS => {:type => ::Thrift::Types::STRING, :name => 'some_characters'},
        OTHER_I32 => {:type => ::Thrift::Types::I32, :name => 'other_i32'},
        SOME_ENUM => {:type => ::Thrift::Types::I32, :name => 'some_enum', :enum_class => SpecNamespace::SomeEnum},
        MY_MAP => {:type => ::Thrift::Types::MAP, :name => 'my_map', :key => {:type => ::Thrift::Types::I32, :enum_class => SpecNamespace::SomeEnum}, :value => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::I32, :enum_class => SpecNamespace::SomeEnum}}}
      }

      def struct_fields; FIELDS; end

      def validate
        raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
        if get_set_field == :some_enum
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field some_enum!') unless SpecNamespace::SomeEnum::VALID_VALUES.include?(get_value)
        end
      end

      ::Thrift::Union.generate_accessors self
    end

    class Struct_with_union
      include ::Thrift::Struct, ::Thrift::Struct_Union
      FUN_UNION = 1
      INTEGER32 = 2
      SOME_CHARACTERS = 3

      FIELDS = {
        FUN_UNION => {:type => ::Thrift::Types::STRUCT, :name => 'fun_union', :class => SpecNamespace::My_union},
        INTEGER32 => {:type => ::Thrift::Types::I32, :name => 'integer32'},
        SOME_CHARACTERS => {:type => ::Thrift::Types::STRING, :name => 'some_characters'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class StructWithEnumMap
      include ::Thrift::Struct, ::Thrift::Struct_Union
      MY_MAP = 1

      FIELDS = {
        MY_MAP => {:type => ::Thrift::Types::MAP, :name => 'my_map', :key => {:type => ::Thrift::Types::I32, :enum_class => SpecNamespace::SomeEnum}, :value => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::I32, :enum_class => SpecNamespace::SomeEnum}}}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
