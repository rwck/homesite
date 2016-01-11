# Tests
## Setup
In the folder you've set up to have your tests, do

`rspec --init`

## last_response
This is an object that has the last response from the server in it. You use it for your tests.

It has a bunch of cool methods:

```
[:original_headers, :errors, :errors=, :=~, :match, :body, :empty?, :length, :length=, :header, :status, :status=, :body=, :[], :[]=, :set_cookie, :delete_cookie, :redirect, :finish, :to_a, :to_ary, :each, :write, :close, :headers, :invalid?, :informational?, :successful?, :redirection?, :client_error?, :server_error?, :ok?, :created?, :accepted?, :bad_request?, :unauthorized?, :forbidden?, :not_found?, :method_not_allowed?, :i_m_a_teapot?, :unprocessable?, :redirect?, :include?, :content_type, :content_length, :location, :to_json, :nil?, :===, :!~, :eql?, :hash, :<=>, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :to_s, :inspect, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :gem, :==, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__, :should, :should_not, :should_receive, :should_not_receive, :stub, :unstub, :stub_chain, :as_null_object, :null_object?, :received_message?]
```

## RSpec works like this
### Equivalence

```
xpect(actual).to eq(expected)  # passes if actual == expected
expect(actual).to eql(expected) # passes if actual.eql?(expected)
expect(actual).not_to eql(not_expected) # passes if not(actual.eql?(expected))
```

### Identity

```
expect(actual).to be(expected)    # passes if actual.equal?(expected)
expect(actual).to equal(expected) # passes if actual.equal?(expected)
```

### Comparisons

```
expect(actual).to be >  expected
expect(actual).to be >= expected
expect(actual).to be <= expected
expect(actual).to be <  expected
expect(actual).to be_within(delta).of(expected)
```

### Regular Expresssions

```
expect(actual).to match(/expression/)
```

### Types/Classes

```
expect(actual).to be_an_instance_of(expected) # passes if actual.class == expected
expect(actual).to be_a(expected)              # passes if actual.kind_of?(expected)
expect(actual).to be_an(expected)             # an alias for be_a
expect(actual).to be_a_kind_of(expected)      # another alias
```

### Truthiness

```
expect(actual).to be_truthy   # passes if actual is truthy (not nil or false)
expect(actual).to be true     # passes if actual == true
expect(actual).to be_falsy    # passes if actual is falsy (nil or false)
expect(actual).to be false    # passes if actual == false
expect(actual).to be_nil      # passes if actual is nil
expect(actual).to_not be_nil  # passes if actual is not nil
```

### Expecting errors

```
expect { ... }.to raise_error
expect { ... }.to raise_error(ErrorClass)
expect { ... }.to raise_error("message")
expect { ... }.to raise_error(ErrorClass, "message")
```

### Expecting throws

```
expect { ... }.to throw_symbol
expect { ... }.to throw_symbol(:symbol)
expect { ... }.to throw_symbol(:symbol, 'value')
```

### Yielding

```
expect { |b| 5.tap(&b) }.to yield_control # passes regardless of yielded args

expect { |b| yield_if_true(true, &b) }.to yield_with_no_args # passes only if no args are yielded

expect { |b| 5.tap(&b) }.to yield_with_args(5)
expect { |b| 5.tap(&b) }.to yield_with_args(Fixnum)
expect { |b| "a string".tap(&b) }.to yield_with_args(/str/)

expect { |b| [1, 2, 3].each(&b) }.to yield_successive_args(1, 2, 3)
expect { |b| { :a => 1, :b => 2 }.each(&b) }.to yield_successive_args([:a, 1], [:b, 2]
```

### Predicate matchers

```
expect(actual).to be_xxx         # passes if actual.xxx?
expect(actual).to have_xxx(:arg) # passes if actual.has_xxx?(:arg)
```

### Collection membership

```
expect(actual).to include(expected)
expect(actual).to start_with(expected)
expect(actual).to end_with(expected)

expect(actual).to contain_exactly(individual, items)
# ...which is the same as:
expect(actual).to match_array(expected_array)
```

## Capybara

```
click_link('id-of-link')
click_link('Link Text')
click_button('Save')
click_on('Link Text') # clicks on either links or buttons
click_on('Button Value')
```

```
fill_in('First Name', :with => 'John')
fill_in('Password', :with => 'Seekrit')
fill_in('Description', :with => 'Really Long Text...')
choose('A Radio Button')
check('A Checkbox')
uncheck('A Checkbox')
attach_file('Image', '/path/to/image.jpg')
select('Option', :from => 'Select Box')
```

```
page.has_selector?('table tr')
page.has_selector?(:xpath, '//table/tr')

page.has_xpath?('//table/tr')
page.has_css?('table tr.foo')
page.has_content?('foo')
```

```
find_field('First Name').value
find_link('Hello', :visible => :all).visible?
find_button('Send').click

find(:xpath, "//table/tr").click
find("#overlay").find("h1").click
all('a').each { |a| a[:href] }
```

```
within("li#employee") do
  fill_in 'Name', :with => 'Jimmy'
end

within(:xpath, "//li[@id='employee']") do
  fill_in 'Name', :with => 'Jimmy'
end
```

```
accept_alert do
  click_link('Show Alert')
end
```

```

save_and_open_page

page.save_screenshot('screenshot.png')
```

### Tape for JS testing

```
var test = require('colored-tape')

test('name of test', function(t) {
  t.plan(2); // this is the number of tests that will be run

  t.equal(typeof Date.now, 'function');
    var start = Date.now();

  setTimeout(function () {
      t.equal(Date.now() - start, 100);
  }, 100);

  t.end(); // you can do this instead of stating how many tests at the outset

});

```
