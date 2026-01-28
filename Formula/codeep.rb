class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.0.tgz"
  sha256 "0b79a98c256a8bb62c4d13a8558b790d04354939a4441eba2e2465fedec17c8a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{libexec}"
    bin.install_symlink "#{libexec}/bin/codeep"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
