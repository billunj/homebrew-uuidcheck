# comment
# frozen_string_literal: true

# top-level class comment
class UUIDCheck < Formula
  desc "UUID Validator"
  homepage "https://bitbucket.org/infomaker/"
  url  "https://s3-eu-west-1.amazonaws.com/cca-dev-bill-temp/uuid-check/uuid-check-2020-12-15T192946-4834483.tar.gz"
  sha256 "fef2f88b85a28f77b005e51986deb74a9399545dd7116e8c99f94e869e290995"

  def install
    bin.install "uuid-check"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test oc-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/uuid-check"
  end
end
