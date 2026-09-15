class Vancetope < Formula
  desc "Vancetope — CLI client for the Vancetope AI workbench"
  homepage "https://github.com/mhus/vance"
  # url + sha256 are rewritten on every `wb release publish` — do not hand-edit.
  url "https://github.com/mhus/vance/releases/download/v0.4.0/vancetope-0.4.0.jar", using: :nounzip
  sha256 "66106c3dfc58cd59ab8eeb7485549c6e36368fa21c891814871388179ad65187"
  license "BUSL-1.1" # Business Source License 1.1 → AGPLv3 on 2029-06-23
  depends_on "openjdk@25"

  def install
    libexec.install "vancetope-0.4.0.jar" => "vancetope.jar"
    (bin/"vancetope").write <<~SH
      #!/bin/bash
      exec "#{Formula["openjdk@25"].opt_bin}/java" --enable-native-access=ALL-UNNAMED -jar "#{libexec}/vancetope.jar" "$@"
    SH
  end

  test do
    assert_predicate bin/"vancetope", :executable?
  end
end
