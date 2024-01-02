import prisma from '@/libs/prisma';

export interface PrismaModels {
  [key: string]: any;
}

const prismaModels: PrismaModels = {
  users: prisma.users,
};

export const listOne = async (entity: string, query: any): Promise<Response> => {
  try {
    const response = await prismaModels[entity].findFirst({
      where: query,
    });
    if (!response) {
      throw { status: 404, message: `Resource not found: ${entity}` };
    }
    return new Response(JSON.stringify({ data: response, success: true }), { status: 200 });
  } catch (error: any) {
    return handleError(error);
  } finally {
    await prisma.$disconnect();
  }
};

export const listAll = async (entity: string): Promise<Response> => {
  try {
    const response = await prismaModels[entity].findMany();
    if (!response) {
      throw { status: 404, message: `Resource not found: ${entity}` };
    }
    return new Response(JSON.stringify({ data: response, success: true }), { status: 200 });
  } catch (error: any) {
    return handleError(error);
  } finally {
    await prisma.$disconnect();
  }
};

export const create = async (entity: string, body: any) => {
  try {
    const response = await prismaModels[entity].create({
      data: body
    });
    return new Response(JSON.stringify({ data: response, success: true }), { status: 200 });
  } catch (error: any) {
    return handleError(error);
  } finally {
    await prisma.$disconnect();
  }
};

export const update = async (entity: string, body: any) => {
  try {
    if (!body.id) {
      throw { status: 500, message: `Id field not found in ${entity}` };
    }
    const response = await prismaModels[entity].update({
      where: { id: body.id },
      data: body
    });
    return new Response(JSON.stringify({ data: response, success: true }), { status: 200 });
  } catch (error: any) {
    return handleError(error);
  } finally {
    await prisma.$disconnect();
  }
};

export const del = async (entity: string, body: any) => {
  try {
    if (!body.id) {
      throw { status: 500, message: `Id field not found in ${entity}` };
    }
    const response = await prismaModels[entity].delete({
      where: { id: body.id },
    });
    return new Response(JSON.stringify({ data: response, success: true }), { status: 200 });
  } catch (error: any) {
    return handleError(error);
  } finally {
    await prisma.$disconnect();
  }
};

export const handleError = (error: any): Response => {
  const status = error?.status ?? 500;
  const message = error?.message ?? 'error in api';
  return new Response(JSON.stringify({ message, error, success: false }), { status });
};