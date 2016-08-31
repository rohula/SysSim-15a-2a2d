

classdef FlagPcs < Simulink.IntEnumType
    enumeration
        unused(0)
        tracked(1)
        disappear(2)
        abnormal(3) 
    end
    methods (Static)
        function retVal = getDescription()
			retVal = '����״̬';
      end
        function retVal = getDefaultValue()
            retVal = FlagPcs.unused;
        end
    end
end