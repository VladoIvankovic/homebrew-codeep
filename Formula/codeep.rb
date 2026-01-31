class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.100.tgz"
  sha256 "6d55136fbf8b6ed6c768ab9db55b329d92057cc8ae801e567685c8a90287a648"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.100"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
