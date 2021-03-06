classdef Enumerator < handle
    % A substitute for an IEnumerator implementation.
    
    properties
        Current
        State
    end
    
    properties (Access = private)
        moveNextFunc
    end
    
    methods
        
        function obj = Enumerator(moveNextFunc)
            obj.moveNextFunc = moveNextFunc;
        end
        
        function b = MoveNext(obj)
            b = obj.moveNextFunc();
        end

    end
    
end

