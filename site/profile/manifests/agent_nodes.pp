class profile::dockeragent {
  include dockeragent
  dockeragent::node {'web':}
  dockeragent::node {'db':}
}
