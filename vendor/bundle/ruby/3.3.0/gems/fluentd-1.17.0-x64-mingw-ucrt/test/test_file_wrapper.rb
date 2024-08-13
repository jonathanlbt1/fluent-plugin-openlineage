require_relative 'helper'
require 'fluent/file_wrapper'

class FileWrapperTest < Test::Unit::TestCase
  TMP_DIR = File.dirname(__FILE__) + "/../tmp/file_wrapper#{ENV['TEST_ENV_NUMBER']}"

  def setup
    FileUtils.mkdir_p(TMP_DIR)
  end

  def teardown
    FileUtils.rm_rf(TMP_DIR)
  end

  sub_test_case 'WindowsFile exceptions' do
    test 'nothing raised' do
      begin
        path = "#{TMP_DIR}/test_windows_file.txt"
        file1 = file2 = nil
        file1 = File.open(path, "wb") do |f|
        end
        assert_nothing_raised do
          file2 = Fluent::WindowsFile.new(path)
        ensure
          file2.close
        end
      ensure
        file1.close if file1
      end
    end

    test 'Errno::ENOENT raised' do
      path = "#{TMP_DIR}/nofile.txt"
      file = nil
      assert_raise(Errno::ENOENT) do
        file = Fluent::WindowsFile.new(path)
      ensure
        file.close if file
      end
    end

    test 'Errno::ENOENT raised on DeletePending' do
      path = "#{TMP_DIR}/deletepending.txt"
      file = Fluent::WindowsFile.new(path, mode='w')
      File.delete(path)
      assert_raise(Errno::ENOENT) do
        file.stat
      ensure
        file.close if file
      end
    end
  end
end if Fluent.windows?
