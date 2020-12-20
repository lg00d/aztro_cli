require_relative "./aztro_cli/version"

require_relative './aztro_cli/api'
require_relative './aztro_cli/cli'
require_relative './aztrocli/horoscope'
#a subset of require and is a convenient method to use when you are referring to a file 
#that is relative to the current file you are working on (basically, within the same project directory).

require 'rest-client'
require 'json' 
#is a method that is used when you want to reference and execute code that is not written in your current file