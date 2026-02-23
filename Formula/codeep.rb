class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.27.tgz"
  sha256 "3488d76cf9d3e8cdcc38669f7a741e2e44bb6309e94a1772782e68289e2cae87"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.27"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
