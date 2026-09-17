class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.4.0.tgz"
  sha256 "9ae3c3ccbc6abc3beb37268c04e380a008b5626292ef4a337edd92a9a84b6760"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.4.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
