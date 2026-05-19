class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.0.2.tgz"
  sha256 "86cc0266c3f689a5b5af7c2dc15ac0ac5f8958ee888ea6f979f790c6ad56de34"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.0.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
