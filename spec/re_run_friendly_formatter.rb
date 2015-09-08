# place the contents of this file in, e.g., spec/re_run_friendly_formatter.rb
#
# and in .rspec:
#
# --format ReRunFriendlyFormatter

require "rspec/core/formatters/progress_formatter"

class ReRunFriendlyFormatter < RSpec::Core::Formatters::ProgressFormatter
  RSpec::Core::Formatters.register self, :dump_summary

  def dump_summary(summary)
    super

    failed_files = summary.failed_examples.map { |e| RSpec::Core::Metadata::relative_path(e.file_path) }.uniq

    return if summary.failed_examples.empty? || failed_files.length > 10

    output.puts
    output.puts "Rerun all failed examples:"
    output.puts

    output.puts failure_colored("rspec #{summary.failed_examples.map { |e| RSpec::Core::Metadata::relative_path(e.location) }.join(" ")}")

    output.puts
    output.puts "Rerun all files containing failures:"
    output.puts

    output.puts failure_colored("rspec #{failed_files.join(" ")}")
  end

  private

  def failure_colored(str)
    RSpec::Core::Formatters::ConsoleCodes.wrap(str, :failure)
  end
end

# for RSpec 2:

class ReRunFriendlyFormatter < RSpec::Core::Formatters::ProgressFormatter
  def dump_commands_to_rerun_failed_examples(*)
    super

    failed_files = failed_examples.map { |e| RSpec::Core::Metadata::relative_path(e.file_path) }.uniq

    return if failed_examples.empty? || failed_files.length > 10

    output.puts
    output.puts "Rerun all failed examples:"
    output.puts

    output.puts(failure_color("rspec #{failed_examples.map { |e| RSpec::Core::Metadata::relative_path(e.location) }.join(" ")}"))

    output.puts
    output.puts "Rerun all files containing failures:"
    output.puts

    output.puts(failure_color("rspec #{failed_files.join(" ")}"))
  end
end
