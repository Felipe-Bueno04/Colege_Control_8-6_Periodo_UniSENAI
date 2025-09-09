import express from 'express';
import cors from 'cors';
import morgan from 'morgan';

// Importação da(s) rota(s) do arquivo index.ts localizado em routes/index.ts
import { router } from './routes';

// Importação do errorHandler.ts que trata erros
import { errorHandler } from './middlewares/errorHandler';

export const app = express(); //
app.use(cors()); //
app.use(express.json()); // 
app.use(morgan('dev')); //
app.use(router); //

// Esse arquivo que trata erros deve vir por último, para caturar exceções das rotas
app.use(errorHandler)

