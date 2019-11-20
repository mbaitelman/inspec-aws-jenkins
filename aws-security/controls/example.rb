# copyright: 2019
title 'Test AWS Security Groups Across All Regions For an Account Disallow FTP'

control 'aws-multi-region-security-group-ftp-1.0' do
  impact 1.0
  title 'Ensure AWS Security Groups disallow FTP ingress from 0.0.0.0/0.'

  aws_regions.region_names.each do |region|
    aws_security_groups(aws_region: region).group_ids.each do |security_group_id|
      describe aws_security_group(aws_region: region, group_id: security_group_id) do
        #it { should exist }
        it { should_not allow_in(ipv4_range: '0.0.0.0/0', port: 21) }
        it { should_not allow_in(protocol: 'all') }
        it { should_not allow_in(ipv4_range: '0.0.0.0/0') }
      end
    end
  end
end
