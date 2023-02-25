class Tsqllint < Formula

  desc "Configurable linting for TSQL"
  homepage "https://github.com/tsqllint/tsqllint"
  license "MIT"

  on_macos do
      url "https://github.com/tsqllint/tsqllint/releases/download/1.15.3/osx-x64.tgz"
      sha256 "69f59715bf7112e6a23ad6cff6ab4259b0d3e382d7560d66c454a215f2227cf6"
  end

  on_linux do
      url "https://github.com/tsqllint/tsqllint/releases/download/1.15.3/linux-x64.tgz"
      sha256 "12b375e3b9b1028e6db0d5d2ffcc054e53529320db9273bd97e04f37211ac4fd"
  end

  def install
    cp_r ".", "#{prefix}"
    (bin/"tsqllint").write <<~EOS
      #!/usr/bin/env bash
      #{prefix}/TSQLLint "$@"
    EOS
  end
end
