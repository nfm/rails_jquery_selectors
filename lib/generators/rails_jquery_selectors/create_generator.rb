require 'rails/generators'

module RailsJquerySelectors
  class CreateGenerator < Rails::Generators::Base
    desc 'Generate rails_jquery_selectors.js.coffee, containing selectors for the current state of your models'

    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    def generate
      puts "generate"
      Dir["#{Rails.root}/**/models/**/*.rb"].map { |file| require file }
      ActiveRecord::Base.descendants.each do |model|
        @model = model
        @instance = @model.new
        template "rails_jquery_selectors.js.coffee", "app/assets/javascripts/rails_jquery_selectors.js.coffee"
      end
    end
  end
end
