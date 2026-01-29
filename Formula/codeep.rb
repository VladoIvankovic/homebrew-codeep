class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.50.tgz"
  sha256 "16231dc49802f6e7263f450aae2755e4624988be7d0ed8d49ddffc58fdecc513"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.50"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
