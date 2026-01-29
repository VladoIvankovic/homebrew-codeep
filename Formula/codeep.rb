class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.52.tgz"
  sha256 "aa435d09ea96e48a788a907e7e6ebf39596bc5df553ea01dc778f321651bc6de"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.52"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
