#coding: utf-8

module Wombat
  module Property
    module Locators
      class Node < Base
        def locate(context, page = nil)
          node = locate_nodes(context).first
          value =
            unless node
              nil
            else
              node
            end
          super { value }
        end
      end
    end
  end
end