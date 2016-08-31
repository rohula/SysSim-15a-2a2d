
% FSC������DD״̬
classdef StateDD < Simulink.IntEnumType
  enumeration
    available(1)
    active(2)
    launched(3) 
    null(4)
    disabled(0)
  end
  methods (Static)
      function retVal = getDescription()
			retVal = 'DD״̬';
      end
      function retVal = getDefaultValue()
            retVal = StateDD.null;
      end
  end
end 