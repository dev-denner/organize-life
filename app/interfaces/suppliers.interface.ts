import { IPurchases } from './purchases.interface';

export interface ISuppliers {
  id?: number;
  external_code: string;
  business_name: string;
  commercial_name?: string;
  cpf_cnpj?: string;
  address?: string;
  uf?: string;
  create_in: Date;
  created_by: number;
  update_in?: Date;
  last_changed_by?: number;
  purchases?: IPurchases[]
}
