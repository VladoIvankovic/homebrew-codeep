class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.0.0.tgz"
  sha256 "1ff012021661f7c0dfce1cfeed4e495bf7859917f5ed753b903073315acb94b4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.0.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
