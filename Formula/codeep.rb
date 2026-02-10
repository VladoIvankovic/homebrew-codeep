class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.5.tgz"
  sha256 "254fe969bdf2f015d1a6272d8a4a1e312bd933a7143b225f9b7f398e273ecd79"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.5"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
