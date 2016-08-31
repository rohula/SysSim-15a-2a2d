

classdef TgtType < Simulink.IntEnumType
  enumeration
    plane(1)
    copter(2)
    uav(3) 
    msl(4)
    ufo(0)
  end
  methods (Static)
      function retVal = getDescription()
			retVal = '目标类型';
      end
      function retVal = getDefaultValue()
            retVal = TgtType.ufo;
      end
      function retVal = getWeightValue(u)
          switch u 
              case 1
                  retVal = 2;
              case 2
                  retVal = 3;
              case 3
                  retVal = 4;
              case 4
                  retVal = 5;
              case 0
                  retVal = 1;
              otherwise
                  retVal = 0;
          end
    end 
  end
end 