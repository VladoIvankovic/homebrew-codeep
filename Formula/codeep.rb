class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.96.tgz"
  sha256 "eb0332d09c78c2e8316dc2bc0f973c4c1fc792038c823b99ddb540f1c5f76843"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.96"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
