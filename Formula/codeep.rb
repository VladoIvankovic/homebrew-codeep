class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.159.tgz"
  sha256 "aeea85fb3671a128d749a5e4829f38a63ae623085af554204dea75be3a185c0e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.159"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
