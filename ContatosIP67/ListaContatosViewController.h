//
//  ListaContatosViewController.h
//  ContatosIP67
//
//  Created by ios5502 on 28/10/15.
//  Copyright © 2015 Caelum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKIt/UIKit.h"
#import "ContatoDoa.h"
#import "Contato.h"


@interface ListaContatosViewController : UITableViewController
@property ContatoDoa *dao;
@property Contato *c;
@property Contato *contatoSelecionado;

@end
