#coding: utf-8
require 'wombat/property/locators/base'
require 'wombat/property/locators/follow'
require 'wombat/property/locators/html'
require 'wombat/property/locators/iterator'
require 'wombat/property/locators/property_group'
require 'wombat/property/locators/list'
require 'wombat/property/locators/text'
require 'wombat/property/locators/headers'
require 'wombat/property/locators/node'
require 'wombat/property/locators/iterator_nodes'

class Wombat::Property::Locators::UnknownTypeException < Exception; end;

module Wombat
  module Property
    module Locators
      module Factory
        def self.locator_for(property)
          klass = case(property.wombat_property_format)
          when :text
            Text
          when :list
            List
          when :html
            Html
          when :iterator
            Iterator
          when :container
            PropertyGroup
          when :follow
            Follow
          when :headers
            Headers
          when :node
            Node
          else
            raise Wombat::Property::Locators::UnknownTypeException.new("Unknown property format #{property.format}.")
          end

          klass.new(property)
        end
      end
    end
  end
end
