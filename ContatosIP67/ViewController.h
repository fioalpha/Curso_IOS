//
//  ViewController.h
//  ContatosIP67
//
//  Created by ios5502 on 26/10/15.
//  Copyright © 2015 Caelum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contato.h"
#import "ContatoDoa.h"

@interface ViewController : UIViewController


@property IBOutlet UITextField *nome;
@property IBOutlet UITextField *telefone;
@property IBOutlet UITextField *email;
@property IBOutlet UITextField *endereco;
@property IBOutlet UITextField *site;
@property (strong) ContatoDoa *dao;


-(IBAction)pegaDadosDoFormulario;
@end

