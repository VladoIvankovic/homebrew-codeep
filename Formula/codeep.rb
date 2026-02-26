class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.63.tgz"
  sha256 "02585b9e6726559431f12db0d79ea1d299df20a8af96fbbe02a6d0002d6d232f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.63"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
