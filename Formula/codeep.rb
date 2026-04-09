class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.2.tgz"
  sha256 "8a4745ebc8ad5ef3f3900b80ce05eb14d78808c7cd12b4c1d66d46814cbfea73"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
