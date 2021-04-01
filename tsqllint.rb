class Tsqllint < Formula

  desc "Configurable linting for TSQL"
  homepage "https://github.com/tsqllint/tsqllint"
  license "MIT"

  on_macos do
      url "https://github.com/tsqllint/tsqllint/releases/download/v1.11.0/osx-x64.tgz"
      sha256 "3dea0aae5941bcee514d8d09a92ff35c90efd6590f67ad1d3ae75ec5c1ba07c5"
  end

  on_linux do
      url "https://github.com/tsqllint/tsqllint/releases/download/v1.11.0/linux-x64.tgz"
      sha256 "3a76238d083af7e2153a9050ef82ba8f2c247e2b20484cd7a1a3c698c1bce834"
  end

  def install
    cp_r ".", "#{prefix}"
    (bin/"tsqllint").write <<~EOS
      #!/usr/bin/env bash
      #{prefix}/TSQLLint.Console "$@"
    EOS
  end
end

