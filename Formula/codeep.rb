class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.30.tgz"
  sha256 "8a251c8f79e4745ca5befa0b9912ee7e969c4222999c3fad792f07f8344fc789"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.30"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
