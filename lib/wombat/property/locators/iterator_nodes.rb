#coding: utf-8

module Wombat
  module Property
    module Locators
      class IteratorNodes < Base
        def locate(context, page = nil)
          super { locate_nodes(context) }
        end
      end
    end
  end
end
