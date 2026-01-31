class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.117.tgz"
  sha256 "992944e4f4a49a0587824f6eee31456f45df4349e0d0b9043ee447b68b38ea95"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.117"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
