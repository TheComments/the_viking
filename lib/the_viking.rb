require "core_ext/object"
require "core_ext/transformations"
require "the_viking/version"

# = Description
# Provides a simple interface to polymorphically access to the spam protection
# service of your choice.
#
# = Usage
# I find it useful to first initialize TheViking in a separate file during
# framework initialization. Rails initializers, for instance, work great for
# this. An example of such an initializer would be as follows:
#
#   TheViking.default_engine = 'akismet'
#   TheViking.connect_options = { :api_key => '1234abc' }
#
# From this point out, TheViking should have everything it needs to access the
# service of your choice. Merely call methods on your service of choice as
# documented. For instance:
#
#   TheViking.mark_as_spam(:signaturs => "1234abc")
module TheViking
  class Error < StandardError; end

  autoload :Akismet, 'the_viking/akismet'

  class << self

    attr_accessor :logger
    attr_accessor :default_engine
    attr_accessor :connect_options
    attr_writer   :default_instance

    def default_instance
      @default_instance ||= connect(self.default_engine, self.connect_options)
    end

    def enabled?
      !self.default_instance.nil?
    end

    def connect(engine, options)
      engine = engine.to_s
      if !engine.empty?
        TheViking.const_get(engine.capitalize).new(options)
      end
    end

    def verified?
      self.default_instance.verified?
    end

    def check_article(options = {})
      self.default_instance.check_article(options)
    end

    def check_comment(options = {})
      self.default_instance.check_comment(options)
    end

    def mark_as_spam(options = {})
      self.default_instance.mark_as_spam(options)
    end

    def mark_as_ham(options = {})
      self.default_instance.mark_as_ham(options)
    end

    def stats
      self.default_instance.stats
    end

    def mark_as_spam_or_ham(is_spam, options = {})
      self.default_instance.mark_as_spam_or_ham(is_spam, options)
    end

  end
end

require "the_viking/base"
