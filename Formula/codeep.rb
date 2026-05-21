class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.1.2.tgz"
  sha256 "dc40b1b33305b9a6bb211b0241ccd75f46c65b5bec0c8f269b86341039e1ef3f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.1.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
