# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Koala < Formula
  desc "CLI for Koala Ops."
  homepage "https://www.koalaops.com"
  version "0.1.13"

  on_macos do
    url "https://github.com/KoalaOps/koala-cli/releases/download/0.1.13/koala_cli_Darwin_all"
    sha256 "53b71436d167e8bc2bc1a2156b4eab198b845dffd2893a290d12c1b2d92ef791"

    def install
      bin.install "koala_cli_Darwin_all" => "koala"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KoalaOps/koala-cli/releases/download/0.1.13/koala_cli_Linux_x86_64"
      sha256 "37234cc4d4ac0828bd47e9b7c3605795936c1342ef90137d0f68ba066562b2f9"

      def install
        bin.install "koala_cli_Linux_x86_64" => "koala"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/KoalaOps/koala-cli/releases/download/0.1.13/koala_cli_Linux_arm64"
      sha256 "33d9a60ee85f2ecea1a0a982b3f48343546f8cd6f92573db7f25c334806e79c4"

      def install
        bin.install "koala_cli_Linux_arm64" => "koala"
      end
    end
  end
end
