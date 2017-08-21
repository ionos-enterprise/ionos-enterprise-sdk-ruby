require 'spec_helper'

describe ProfitBricks::NIC do
  before(:all) do
    @datacenter = ProfitBricks::Datacenter.create(options[:datacenter])
    @datacenter.wait_for { ready? }

    @server = ProfitBricks::Server.create(@datacenter.id, options[:server])
    @server.wait_for { ready? }

    @nic = ProfitBricks::NIC.create(@datacenter.id, @server.id, options[:nic])
    @nic.wait_for { ready? }

    @fwrule = @nic.create_firewall_rule(options[:fwrule])
    @fwrule.wait_for { ready? }
  end

  after(:all) do
    @datacenter.delete
  end

  it '#create' do
    expect(@nic.type).to eq('nic')
    expect(@nic.id).to match(options[:uuid])
    expect(@nic.properties['name']).to eq('Ruby SDK Test')
    expect(@nic.properties['ips']).to be_kind_of(Array)
    expect(@nic.properties['dhcp']).to be true
    expect(@nic.properties['firewallActive']).to be true
    expect(@nic.properties['lan']).to eq(1)
    expect(@nic.properties['nat']).to be false
  end

  it '#create failure' do
    expect { ProfitBricks::NIC.create(@datacenter.id, @server.id, name: 'Ruby SDK Test') }.to raise_error(Excon::Error::UnprocessableEntity, /Attribute 'lan' is required/)
  end

  it '#list' do
    nics = ProfitBricks::NIC.list(@datacenter.id, @server.id)

    expect(nics.count).to be > 0
    expect(nics[0].type).to eq('nic')
    expect(nics[0].id).to eq(@nic.id)
    expect(nics[0].properties['name']).to eq('Ruby SDK Test')
    expect(nics[0].properties['ips']).to be_kind_of(Array)
    expect(nics[0].properties['dhcp']).to be true
    expect(nics[0].properties['lan']).to eq(1)
  end

  it '#get' do
    nic = ProfitBricks::NIC.get(@datacenter.id, @server.id, @nic.id)

    expect(nic.type).to eq('nic')
    expect(nic.id).to eq(@nic.id)
    expect(nic.properties['name']).to eq('Ruby SDK Test')
    expect(nic.properties['ips']).to be_kind_of(Array)
    expect(nic.properties['dhcp']).to be true
    expect(nic.properties['lan']).to eq(1)
    expect(nic.properties['firewallActive']).to be true
    expect(nic.properties['nat']).to be false
  end

  it '#get failure' do
      expect { ProfitBricks::NIC.get(@datacenter.id, @server.id, options[:bad_id]) }.to raise_error(Excon::Error::NotFound, /Resource does not exist/)
  end

  it '#update' do
    nic = @nic.update(name: 'Ruby SDK Test - RENAME')

    expect(nic.type).to eq('nic')
    expect(nic.id).to eq(@nic.id)
    expect(nic.properties['name']).to eq('Ruby SDK Test - RENAME')
    expect(nic.properties['ips']).to be_kind_of(Array)
    expect(nic.properties['dhcp']).to be true
    expect(nic.properties['lan']).to eq(1)
  end

  it '#delete' do
    nic = ProfitBricks::NIC.create(@datacenter.id, @server.id, options[:nic])
    nic.wait_for { ready? }

    expect(nic.delete.requestId).to match(options[:uuid])
  end

  it '#list_firewall_rules' do
    fwrules = @nic.list_firewall_rules

    expect(fwrules.count).to be > 0
    expect(fwrules[0].type).to eq('firewall-rule')
    expect(fwrules[0].id).to eq(@fwrule.id)
    expect(fwrules[0].properties).to be_kind_of(Hash)
  end

  it '#create_firewall_rule, get_firewall_rule' do
    fwrule = @nic.get_firewall_rule(@fwrule.id)

    expect(fwrule.type).to eq('firewall-rule')
    expect(fwrule.id).to eq(@fwrule.id)
    expect(fwrule.properties).to be_kind_of(Hash)
  end
end
