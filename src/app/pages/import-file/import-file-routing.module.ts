import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ImportFileComponent } from './import-file.component';

const routes: Routes = [{ path: '', component: ImportFileComponent }];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ImportFileRoutingModule { }
