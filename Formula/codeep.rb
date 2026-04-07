class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.158.tgz"
  sha256 "1441c410f6216b4ea254bd0ab1869af518173bbce13d4f2a556dc8d950019648"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.158"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
