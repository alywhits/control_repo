class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web':}
  dockeragent::node {'db':}
}
