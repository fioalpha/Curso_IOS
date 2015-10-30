//
//  ContatoDoa.m
//  ContatosIP67
//
//  Created by ios5502 on 28/10/15.
//  Copyright © 2015 Caelum. All rights reserved.
//

#import "ContatoDoa.h"

@implementation ContatoDoa

static ContatoDoa *defaultDao = nil;
-(id) init {
    self = [super init];
    if(self){
        
        //Criando instancia do conta
        _contatos = [NSMutableArray new];
    }
    return self;
}

+(id) contatoDaoInstance{
    if(!defaultDao){
        defaultDao = [ContatoDoa new];
    }
    return defaultDao;
}
-(Contato *)buscaContatoDaPosicao : (NSInteger) posicao{
    return self.contatos[posicao];
}

-(void) removeContatosDaPosicao:(NSInteger) posicao{
    [self.contatos removeObjectAtIndex:posicao];
}

-(void) adicionaContato:(Contato *)contato{
    [self.contatos addObject:contato];
    NSLog(@"Contatos: %@",self.contatos);
}
@end
