//Tipos do express para req/res/middlewares
import {NextFunction, Request, Response} from 'express';

// Erro lançado pela validação zod
import {ZodError} from 'zod';

export class HttpErro extends Error{
    statusCode: number;

    constructor(statusCode: number, message: string){
        super(message);
        this.statusCode = statusCode;
    }
}

