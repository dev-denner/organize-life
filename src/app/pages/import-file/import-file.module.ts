import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ImportFileRoutingModule } from './import-file-routing.module';
import { ImportFileComponent } from './import-file.component';


@NgModule({
  declarations: [
    ImportFileComponent
  ],
  imports: [
    CommonModule,
    ImportFileRoutingModule
  ]
})
export class ImportFileModule { }
