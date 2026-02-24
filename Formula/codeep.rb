class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.45.tgz"
  sha256 "99771bb2c48a39f8992a94323ed66ec712dfc17a6dd4b991a485f085944f968d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.45"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
