class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.9.tgz"
  sha256 "93381154de613fe5fd8ca10fcf1f84c48a68126cde0267f37e89a9151555169c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.9"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
