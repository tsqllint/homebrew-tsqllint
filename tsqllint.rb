class Tsqllint < Formula

  desc "Configurable linting for TSQL"
  homepage "https://github.com/tsqllint/tsqllint"
  license "MIT"

  on_macos do
      url "https://github.com/tsqllint/tsqllint/releases/download/v1.12.0-beta/osx-x64.tgz"
      sha256 "38040253f89550b1f92b3260109cc38018cc8f843fbcbd4d50627ebd07c57115"
  end

  on_linux do
      url "https://github.com/tsqllint/tsqllint/releases/download/v1.12.0-beta/linux-x64.tgz"
      sha256 "66874fe32ea4e721554340d709193bff4a9e747912bbfb1920da55329465c355"
  end

  def install
    cp_r ".", "#{prefix}"
    (bin/"tsqllint").write <<~EOS
      #!/usr/bin/env bash
      #{prefix}/TSQLLint.Console "$@"
    EOS
  end
end

