class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.23.0.tgz"
  sha256 "71aefda9c17831249ec2b50586158b40bce788a89c9c23e82bdda850df1b3522"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.23.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
