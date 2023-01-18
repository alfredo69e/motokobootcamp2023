import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface Book { 'title' : string, 'pages' : bigint }
export interface _SERVICE {
  'add_book' : ActorMethod<[string, bigint], undefined>,
  'drop' : ActorMethod<[Array<bigint>, bigint], Array<bigint>>,
  'get_books' : ActorMethod<[], Array<Book>>,
  'remove_event' : ActorMethod<[Array<bigint>], Array<bigint>>,
  'second_maximum' : ActorMethod<[Array<bigint>], bigint>,
}
