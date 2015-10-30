//
//  ListaContatosViewController.m
//  ContatosIP67
//
//  Created by ios5502 on 28/10/15.
//  Copyright © 2015 Caelum. All rights reserved.
//

#import "ListaContatosViewController.h"


@implementation ListaContatosViewController



-(id) init{
    self = [super init];
    if(self){
        self.navigationItem.title = @"Contatos";
        UIBarButtonItem *botaoExibirFormulario = [[UIBarButtonItem alloc]
            initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
        self.navigationItem.rightBarButtonItem = botaoExibirFormulario;
        self.dao = [ContatoDoa contatoDaoInstance];
        
        //Adicionando button do lado esquerto  para delete do item
        self.navigationItem.leftBarButtonItem = self.editButtonItem;
    }
    
    return self;
}

//Sobre escrevendo o metodo
-(void) tableView:(UITableView *) tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete){
        //Removendo o item da lista ContatoDao
        [self.dao removeContatos:indexPath.row];
        
        //Fazendo animacao quando delete o objeto da lista
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

//Retorno do self.contata
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dao.contatos count];
}
//Criando o a linbha
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(!cell){
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    Contato *contato = [self.dao buscaContatoDaPosicao:indexPath.row];
    cell.textLabel.text = contato.nome;
    return cell;
}

//Montando o list
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(void) exibeFormulario{
    /**
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"My Alert"
                                        message:@"This is an alert."
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction * action) {
                                                            NSLog(@"Okay");
                                                        }];
    UIAlertAction* cancelarAction = [UIAlertAction actionWithTitle:@"Cancelar" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              //NSLog(@"Cancelar");
                                                          }];
    
    [alert addAction:defaultAction];
    [alert addAction:cancelarAction];
    [self presentViewController:alert animated:YES completion:nil];
    [self presentViewController:alert animated:YES completion:nil];*/
    
    
    NSLog(@"TESTE");
};

@end
