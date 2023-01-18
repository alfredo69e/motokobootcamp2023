export const idlFactory = ({ IDL }) => {
  const Book = IDL.Record({ 'title' : IDL.Text, 'pages' : IDL.Nat });
  return IDL.Service({
    'add_book' : IDL.Func([IDL.Text, IDL.Nat], [], []),
    'drop' : IDL.Func([IDL.Vec(IDL.Nat), IDL.Nat], [IDL.Vec(IDL.Nat)], []),
    'get_books' : IDL.Func([], [IDL.Vec(Book)], ['query']),
    'remove_event' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Vec(IDL.Nat)], []),
    'second_maximum' : IDL.Func([IDL.Vec(IDL.Int)], [IDL.Int], []),
  });
};
export const init = ({ IDL }) => { return []; };
