//
//  ViewController.m
//  ContatosIP67
//
//  Created by ios5502 on 26/10/15.
//  Copyright © 2015 Caelum. All rights reserved.
//

#import "ViewController.h"
#import "Contato.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//Para inicializar o formulario
-(id)initWithCoder : (NSCoder *) aDecoder{
    self = [super initWithCoder:aDecoder ];
    if(self){
        self.dao = [ContatoDoa contatoDaoInstance];
    }
    return self;
}

-(IBAction)pegaDadosDoFormulario{
    
    Contato *contato = [Contato new];
    
    contato.nome = [self.nome text];
    contato.telefone = [self.telefone text];
    contato.email = [self.email text];
    contato.endereco = [self.endereco text];
    contato.site = [self.site text];
    NSLog(@"Nome %@,  Telefone %@, Email %@, Endereco %@, Site %@",contato.nome, contato.telefone, contato.email, contato.endereco, contato.site);
    
    [self .dao adicionaContato:contato];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
