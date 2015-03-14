module AwesomePrint
  module Formatters
    require 'awesome_print/formatters/base'
    require 'awesome_print/formatters/array'
    require 'awesome_print/formatters/hash'
    require 'awesome_print/formatters/object'
    require 'awesome_print/formatters/set'
    require 'awesome_print/formatters/struct'
    require 'awesome_print/formatters/class'
    require 'awesome_print/formatters/file'
    require 'awesome_print/formatters/dir'
    require 'awesome_print/formatters/big_decimal'
    require 'awesome_print/formatters/rational'
    require 'awesome_print/formatters/method'
    require 'awesome_print/formatters/active_record_instance'
    require 'awesome_print/formatters/active_record_class'
    require 'awesome_print/formatters/active_support_time'
    require 'awesome_print/formatters/hash_with_indifferent_access'
    require 'awesome_print/formatters/mongoid_class'
    require 'awesome_print/formatters/mongoid_document'
    require 'awesome_print/formatters/mongoid_bson_id'
    require 'awesome_print/formatters/mongo_mapper_instance'
    require 'awesome_print/formatters/mongo_mapper_class'
    require 'awesome_print/formatters/mongo_mapper_association'
    require 'awesome_print/formatters/mongo_mapper_bson_id'
    require 'awesome_print/formatters/nobrainer_class'
    require 'awesome_print/formatters/nobrainer_document'
    require 'awesome_print/formatters/nokogiri_xml_node'
    require 'awesome_print/formatters/open_struct_instance'
    require 'awesome_print/formatters/ripple_document_instance'
    require 'awesome_print/formatters/ripple_document_class'
  end
end
