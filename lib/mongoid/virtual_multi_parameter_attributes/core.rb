module Mongoid

  module VirtualMultiParameterAttributes #:nodoc:

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods

      def virtual_time_multi_parameter(key)
        @fields ||= {}
        fld = Mongoid::Fields::Serializable::Time.new
        fld.options = {:type => Time}
        @fields[key.to_s] = fld
      end
  
      def virtual_date_multi_parameter(key)
        fld = Mongoid::Fields::Serializable::Date.new
        fld.options = {:type => Date}
        @fields[key.to_s] = fld
      end
  
      def virtual_date_time_multi_parameter(key)
        fld = Mongoid::Fields::Serializable::DateTime.new
        fld.options = {:type => DateTime}
        @fields[key.to_s] = fld
      end

    end # of ClassMethods

  end # of VirtualMultiParameterAttributes module

end # of Mongoid module
