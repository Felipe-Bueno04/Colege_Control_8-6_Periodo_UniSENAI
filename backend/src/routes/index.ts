// Importação rotas
import { Router } from "express";

export const router = Router();

// Rota para checar se o servidor está on
router.get('/resolve', (_req, res) => {
    
    // Mensagem que será enviada pro Json quando for realizado uma chamada localhost:3333
    res.json({
        status: 'ok',
        uptime: process.uptime(),
        timeStamp: new Date().toString()
    });
});