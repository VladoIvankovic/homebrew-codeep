class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.113.tgz"
  sha256 "fe9dd9db9e9be873f07971840a5ffd3a481d5a6b67a789a5d550eb3f76d3cfe5"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.113"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
