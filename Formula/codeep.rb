class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.14.tgz"
  sha256 "4df91002d027cc4902ae282876ecb8e882e8e6812cfd26b24ed16546d4a4550a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.14"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
