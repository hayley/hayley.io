# require 'opal'
# require 'reactrb'

puts 'hayleysayshi'

module Foo
  class TestComponent < React::Component::Base
    export_component
    render do
      'hello'
    end
  end
end
