class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.139.tgz"
  sha256 "39d33c9b5578745dcb274b63b2318993d7f4285d0fb3a6b503613b7a5a37f655"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.139"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
