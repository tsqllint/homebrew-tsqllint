class Tsqllint < Formula

  desc "Configurable linting for TSQL"
  homepage "https://github.com/tsqllint/tsqllint"
  license "MIT"

  on_macos do
      url "https://github.com/tsqllint/tsqllint/releases/download/1.15.1/osx-x64.tgz"
      sha256 "4560f4e49fc5cbd8802c75de5540382124f0c9bb1cfed96f18be89d799cf0da0"
  end

  on_linux do
      url "https://github.com/tsqllint/tsqllint/releases/download/1.15.1/linux-x64.tgz"
      sha256 "aa0abe7d7b59b0d1116e47c05098b51241e4db1e2dc909d9e3731dfca97f1a48"
  end

  def install
    cp_r ".", "#{prefix}"
    (bin/"tsqllint").write <<~EOS
      #!/usr/bin/env bash
      #{prefix}/TSQLLint "$@"
    EOS
  end
end
