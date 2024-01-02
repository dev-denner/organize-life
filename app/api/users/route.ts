import { create, del, listAll, listOne, update } from '../repository';

const entity = 'user';

export const GET = async (request: Request) => {
  const { searchParams } = new URL(request.url);
  const external_code = searchParams.get('external_code');
  if (external_code) {
    return listOne(entity, { external_code })
  }
  return listAll(entity);
};

export const POST = async (request: Request) => {
  const body = await request.json();
  return create(entity, body);
};

export const PUT = async (request: Request) => {
  const body = await request.json();
  return update(entity, body);
};

export const DELETE = async (request: Request) => {
  const body = await request.json();
  return del(entity, body);
};
