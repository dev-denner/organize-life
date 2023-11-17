import prisma from '@/libs/prisma';

export const GET = async (request: Request) => {
  try {
    const { searchParams } = new URL(request.url);
    const external_code = searchParams.get('external_code');
    if (external_code) {
      const user = await prisma.users.findFirst({
        where: { external_code },
      });
      if (!user) {
        throw { status: 404, message: 'User not found' }
      }
      return new Response(JSON.stringify({ data: user, success: true }), { status: 200 });
    }
    const users = await prisma.users.findMany();
    return new Response(JSON.stringify({ data: users, success: true }), { status: 200 });
  } catch (error: any) {
    return handleError(error);
  } finally {
    await prisma.$disconnect();
  }
};

export const POST = async (request: Request) => {
  const body = await request.json();
  try {
    const user = await prisma.users.create({
      data: body
    });
    return new Response(JSON.stringify({ data: user, success: true }), { status: 200 });
  } catch (error: any) {
    return handleError(error);
  } finally {
    await prisma.$disconnect();
  }
};

export const PUT = async (request: Request) => {
  const body = await request.json();
  try {
    const user = await prisma.users.update({
      where: { id: body.id },
      data: body
    });
    return new Response(JSON.stringify({ data: user, success: true }), { status: 200 });
  } catch (error: any) {
    return handleError(error);
  } finally {
    await prisma.$disconnect();
  }
};

export const DELETE = async (request: Request) => {
  const body = await request.json();
  try {
    const user = await prisma.users.delete({
      where: { id: body.id },
    });
    return new Response(JSON.stringify({ data: user, success: true }), { status: 200 });
  } catch (error: any) {
    return handleError(error);
  } finally {
    await prisma.$disconnect();
  }
};

const handleError = (error: any) => {
  const status = error?.status ?? 500;
  const message = error?.message ?? 'error in user api';
  return new Response(JSON.stringify({ message, error, success: false }), { status });
};