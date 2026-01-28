class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.4.tgz"
  sha256 "5f573fa5b22e3649e58050b26c96bf0e2996a1f60b808b58bc171e1fac6f871f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.4"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
