class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.22.0.tgz"
  sha256 "062eec5a997f41c548579dbc03834d180f709816500a735c3d9e97897de7b076"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.22.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
