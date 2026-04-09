class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.12.tgz"
  sha256 "5c3ef24c02a0904c8bdfdf8c891d69dabd8e4b46d6fa186e09d4f46f2149a284"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.12"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
