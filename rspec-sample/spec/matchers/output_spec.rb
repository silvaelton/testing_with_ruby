describe 'Matcher output' do
  it { expect{puts 'elton'}.to output.to_stdout }
  it { expect{print 'elton'}.to output('elton').to_stdout }
  it { expect{puts 'elton'}.to output(/elton/).to_stdout }
  it { expect{warn('elton')}.to output(/elton/).to_stderr }
end
