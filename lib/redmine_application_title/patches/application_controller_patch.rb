module RedmineApplicationTitle
  module Patches
    module ApplicationControllerPatch
      def self.included(base) # :nodoc:
        base.class_eval do
          unloadable
          helper :application_title
        end
      end
    end
  end
end
