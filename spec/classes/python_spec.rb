require 'spec_helper' 

describe 'appengine_python::python' do
    context 'Running on Ubuntu' do
        let :facts do
            {
                :operatingsystem => "ubuntu"
            }
        end

        it { 
            should contain_package('python2.7').with_ensure('installed')
            should contain_package('python-setuptools').with_ensure('installed')
            should contain_package('python-pip').with_ensure('installed')
        }

    end
end
