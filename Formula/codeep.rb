class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.152.tgz"
  sha256 "c4d007db8a20093de84a5809690586596501a7ff57c911c4d70d243c8bac0b73"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.152"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
