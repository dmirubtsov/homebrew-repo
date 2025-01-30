# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoDhcpDns < Formula
  desc "Make DNS go through DHCP"
  homepage "https://github.com/mazzz1y/go-dhcp-dns"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mazzz1y/go-dhcp-dns/releases/download/v1.0.1/go-dhcp-dns_1.0.1_darwin_amd64.tar.gz"
      sha256 "37d1ce5e174dcc5657635fd5099502dfd6e9098c33c5b7d3d48fd4ad120b1740"

      def install
        bin.install "go-dhcp-dns"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mazzz1y/go-dhcp-dns/releases/download/v1.0.1/go-dhcp-dns_1.0.1_darwin_arm64.tar.gz"
      sha256 "118674d39a77b5f4c768b9550844d67b36d703fb7c1ed0d20d868f3e10d4d104"

      def install
        bin.install "go-dhcp-dns"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mazzz1y/go-dhcp-dns/releases/download/v1.0.1/go-dhcp-dns_1.0.1_linux_amd64.tar.gz"
        sha256 "35f37475fb800f959901f314d70b5514b90b013d633cbdc35b0fff7637025971"

        def install
          bin.install "go-dhcp-dns"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mazzz1y/go-dhcp-dns/releases/download/v1.0.1/go-dhcp-dns_1.0.1_linux_arm64.tar.gz"
        sha256 "b48def39567d13294b3318089412996ca835fd4da1046b5156f7d4731c6a20a2"

        def install
          bin.install "go-dhcp-dns"
        end
      end
    end
  end

  service do
    run [opt_bin/"go-dhcp-dns"]
    keep_alive true
    stderr_path "#{var}/log/go-dhcp-dns.err.log"
  end
end
