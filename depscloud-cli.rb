# This file was generated by GoReleaser. DO NOT EDIT.
class DepscloudCli < Formula
  desc "Command line interface to the deps.cloud API"
  homepage "https://deps.cloud/"
  version "0.2.31"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/depscloud/depscloud/releases/download/v0.2.31/deps_0.2.31_darwin_amd64.tar.gz"
    sha256 "b6dd89387542da154da39de66ef606f4cf5748b6a0eee56e0c8ea2cbc2c64f8f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/depscloud/depscloud/releases/download/v0.2.31/deps_0.2.31_linux_amd64.tar.gz"
      sha256 "c62b74ed6bc9f85c932dcb6e9b972ce7f7c7f4926b1ed88af32fac72149aaee0"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/depscloud/depscloud/releases/download/v0.2.31/deps_0.2.31_linux_arm64.tar.gz"
        sha256 "10b0c0d9fc0c6187f9085766413ccdfeea8e1b792c2735cef93e0ff155556afc"
      else
        url "https://github.com/depscloud/depscloud/releases/download/v0.2.31/deps_0.2.31_linux_armv7.tar.gz"
        sha256 "dca5f02b6899ac0c4ddbbec6d6c8cbcd78b16c0aac8b4f89e9ff44b55d4bcf55"
      end
    end
  end

  def install
    bin.install "deps"
  end
end
