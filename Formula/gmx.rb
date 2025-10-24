# typed: false
# frozen_string_literal: true

class Gmx < Formula
  desc "GMX CLI - A powerful code generation and management tool"
  homepage "https://github.com/razpinator/gmx"
  url "https://github.com/razpinator/gmx.git",
      tag: "v0.0.11"
  version "0.0.11"
  head "https://github.com/razpinator/gmx.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    system bin/"gmx", "--version"
  end
end