class Vancetope < Formula
  desc "Vancetope — CLI client for the Vancetope AI workbench"
  homepage "https://github.com/mhus/vance"
  # url + sha256 are rewritten on every `wb release publish` — do not hand-edit.
  url "https://github.com/mhus/vance/releases/download/v0.6.0/vancetope-0.6.0.jar", using: :nounzip
  sha256 "d0b7664aec8f46b748915a1c7b8cb5cee657e3f9f7abdcaa4f4a08ff6f045bf4"
  license "AGPL-3.0-only"
  depends_on "openjdk@25"

  def install
    libexec.install "vancetope-0.6.0.jar" => "vancetope.jar"
    (bin/"vancetope").write <<~SH
      #!/bin/bash
      exec "#{Formula["openjdk@25"].opt_bin}/java" --enable-native-access=ALL-UNNAMED -jar "#{libexec}/vancetope.jar" "$@"
    SH
  end

  test do
    assert_predicate bin/"vancetope", :executable?
  end
end
