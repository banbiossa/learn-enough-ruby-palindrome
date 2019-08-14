lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sshimizu_palindrome/version"

Gem::Specification.new do |spec|
  spec.name          = "sshimizu_palindrome"
  spec.version       = SshimizuPalindrome::VERSION
  spec.authors       = ["Shota Shimizu"]
  spec.email         = ["s_shimizu@pkshatech.com"]

  spec.summary       = %q{Palindrome detector}
  spec.description   = %q{Learn enough ruby palindrome detector}
  spec.homepage      = "https://github.com/banbiossa/learn-enough-ruby-palindrome"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/banbiossa/learn-enough-ruby-palindrome"
  spec.metadata["changelog_uri"] = "https://github.com/banbiossa/learn-enough-ruby-palindrome/changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
