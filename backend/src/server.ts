import { app } from "./app";
import { ENV } from "./config/env"; // Variávis de ambiente

app.listen(ENV.PORT, () => {
    console.log("SERVIDOR RODANDO...")
});
