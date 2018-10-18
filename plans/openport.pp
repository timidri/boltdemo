plan boltdemo::openport(
  String $port,
  String $node,
){
  notice("openport: ${port}, ${node}")
  apply_prep($node)

  $result = apply($node) {
    firewall { "100 allow port ${port} access":
      dport  => $port,
      proto  => tcp,
      action => accept,
    }
  }

  notice("result: ${result}")
}
