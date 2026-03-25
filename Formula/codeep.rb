class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.107.tgz"
  sha256 "1927eb7e784e39d02dfe981e6246a8c371053c352ff85100ee0abdee6319f847"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.107"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
