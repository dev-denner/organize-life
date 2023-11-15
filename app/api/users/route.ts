import prisma from '@/libs/prisma';

export async function GET(request: Request) {
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
    console.error('Request error', error);
    const status = error?.status ?? 500;
    const message = error?.message ?? 'Error when querying users';
    return new Response(JSON.stringify({ error: message, success: false }), { status });
  } finally {
    await prisma.$disconnect();
  }
}