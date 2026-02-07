class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.27.tgz"
  sha256 "ed3834faec41727a35b3c7cb9b8d7da4ba51b47046cdfac22d463cf68c95f621"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.27"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
