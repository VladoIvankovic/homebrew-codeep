class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.93.tgz"
  sha256 "7503a53100e5b05641f6bf284faa92d9d8f456deb0462ad4564e23ac08c8e761"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.93"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
