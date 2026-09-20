clear
int main(void) {
    FIL fd;
    char buf[256];
    int bytesRead;

  //  printf("Iniciando o programa duart\n");

   // contador=1;

    //while (1) {
     // 1. Abre o arquivo ELF no disco
    if (fopen(&fd, "tb99.bas", FA_READ) != FR_OK) {
        cputs("Erro ao tentar abrir o arquivo\n");
        return 0;
    }
    cputs("Arquivo aberto\n");

    flseek(&fd, 0);
    if (fread(&fd, buf, sizeof(buf), &bytesRead) != FR_OK || bytesRead != sizeof(buf)) {
        cputs("Nao foi possivel ler o header do ELF.\n");
        return 1;
    }

    dumphex("tb99.bas",buf,bytesRead);



    fclose(&fd);
        cputss("Serial-Arquivo aberto\n");
        //uint8_t recebido = duart_a_recv_char();

        //printf("recebido '%c' (0x%02X)\n", recebido, recebido);
        //putchar(recebido);
        //delay_short(); /* só para dar um intervalo visível entre caracteres no osciloscopio */
        //putchar(getchar());
    //}
    printf("contador[%04x] *ptr_contador[%04x]\n",contador,*ptr_contador);
    return 0;
}
