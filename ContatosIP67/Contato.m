//
//  Contato.m
//  ContatosIP67
//
//  Created by ios5502 on 27/10/15.
//  Copyright © 2015 Caelum. All rights reserved.
//

#import "Contato.h"

@implementation Contato

//ToString
-(NSString *)description{
    return [NSString stringWithFormat:@"Nome: %@, Telefone: %@, Email: %@, Endereco: %@, Site: %@", self.nome, self.telefone, self.email, self.endereco, self.site];
}
@end
