import { Component, OnInit } from '@angular/core';
import { NgModule } from '@angular/core';

import { Aluno } from './aluno';
import { AlunoService } from './aluno.service';

@Component({
  selector: 'app-root',
  templateUrl: './auto-avaliacao_login.component.html',
  styleUrls: ['./alunos.component.css']
})
export class Aluno_login {
   constructor(private alunoService: AlunoService) {}

   aluno: Aluno = new Aluno();

   logar(a: Aluno): void {
    let authenticationOk=false;
    this.alunoService.getAlunos()
      .then(ar =>{
        //depois mudar para cpf porque do jeito que está não é garantido que dê certo para dois alunos com o mesmo nome
        let x = ar.filter(function(item){
        return item.nome==a.nome
        });
        if(x&&x[0].senha===a.senha){
         authenticationOk=true;
        }
        if(authenticationOk){
          window.location.href='auto-avaliacao.html';
        }else{
          window.alert("usuário ou senha errado, confira a digitação")
        }
      });
   }
}
