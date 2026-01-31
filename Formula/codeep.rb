class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.119.tgz"
  sha256 "a28b35f6cd330153d3233eda1bb7abd7b94b6d469855e237401edb57dbc6b96d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.119"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
