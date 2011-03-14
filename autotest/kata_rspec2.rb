require 'autotest/rspec2'

class Autotest::KataRspec2 < Autotest::Rspec2
  def setup_rspec_project_mappings
    add_exception %r%^\./(?:doc|log|public|tmp|\.git|\.hg|\.svn|_darcs|framework|gems|\.DS_Store|autotest|bin|.*\.sqlite3|.*\.thor)%
    %w[.svn .hg .git _darcs .autotest].each { |exception| add_exception(exception) }

    clear_mappings

    # Just the defaults from RSpec for now
    add_mapping(%r%^spec/.*_spec\.rb$%) { |filename, _|
      filename
    }
    add_mapping(%r%^lib/(.*)\.rb$%) { |_, m|
      ["spec/#{m[1]}_spec.rb"]
    }
    add_mapping(%r%^spec/(spec_helper|shared/.*)\.rb$%) {
      files_matching %r%^spec/.*_spec\.rb$%
    }
  end

  private

  def all_specs
    files_matching %r%^spec/.*_spec\.rb$%
  end
end
