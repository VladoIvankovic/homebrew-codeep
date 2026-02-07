class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.20.tgz"
  sha256 "9c8147c55f1fef8235b70341c1e07fd4d1660d172db2f2ad8d9fc3e8bf9db9bf"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.20"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
