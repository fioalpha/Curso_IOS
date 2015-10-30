//
//  ContatoDoa.h
//  ContatosIP67
//
//  Created by ios5502 on 28/10/15.
//  Copyright © 2015 Caelum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contato.h"
@interface ContatoDoa : NSObject


@property (strong, readonly) NSMutableArray *contatos;

-(void) adicionaContato:(Contato*) contato;
+(id)contatoDaoInstance;
-(Contato *)buscaContatoDaPosicao : (NSInteger) posicao;
-(void) removeContatos:(NSInteger) posicao;

@end
