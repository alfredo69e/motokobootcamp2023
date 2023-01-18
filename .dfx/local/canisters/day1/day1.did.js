export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'multiply' : IDL.Func([IDL.Int, IDL.Int], [IDL.Int], []),
    'square' : IDL.Func([IDL.Int, IDL.Int], [IDL.Float64], []),
  });
};
export const init = ({ IDL }) => { return []; };
