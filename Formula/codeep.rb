class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.43.tgz"
  sha256 "a584c146bcbf52522f1a3e907ef200df4398580f8b0df6a0074fadc7d12bcdae"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.43"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
