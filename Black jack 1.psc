SubProceso aleat = Numeroalt
	Definir aleat Como Entero;
	aleat = azar(11)+1;
FinSubProceso

SubProceso playerturn(n,msd1)
	Definir alkt1 Como Entero;
	Definir respuesta Como Caracter;
	Repetir
		Si msd1<21 Entonces
			Escribir 'Desea otra carta (s/n)';
			Leer respuesta;
			Si respuesta='s' Entonces
				msd1 = msd1+Numeroalt;
				Escribir 'Ahora sus cartas son ;',msd1;
			SiNo
				machineturn(msd1);
			FinSi
			Si msd1>21 Entonces
				Escribir 'perdiste';
			FinSi
			Si msd1=21 Entonces
				Escribir 'Ganaste';
			FinSi
		FinSi
	Hasta Que respuesta='n'
FinSubProceso

SubProceso machineturn(msd1)
	Definir maquina Como Entero;
	maquina = 0;
	Escribir 'turno maquina';
	maquina = Numeroalt+maquina;
	Si maquina<msd1 Entonces
		Escribir 'Ganaste , la maquina tenia ; ',maquina;
	SiNo
		Si maquina=msd1 Entonces
			Escribir 'Empate, la maquina tenia ; ',maquina;
		SiNo
			Escribir 'Perdiste , la maquina tenia ; ',maquina;
		FinSi
	FinSi
FinSubProceso

Proceso siu
	Definir n,alkt,aleat,maquina,msd1 Como Entero;
	Definir doce Como Caracter;
	Repetir
		Escribir 'Bienvenido a Blackjack';
		n = 0;
		maquina = 0;
		Escribir 'El jugador tiene ;',n;
		Escribir 'La maquina tiene ;',maquina;
		msd1 <- Numeroalt+n;
		Escribir 'Ahora la suma de sus cartas es igual a ',msd1;
		playerturn(n,msd1);
		Escribir 'Gracias por jugar';
		Escribir 'Desea iniciar otra partida (s/n)';
		Leer doce;
	Hasta Que doce='n'
	Escribir 'Gracias por jugar :) ';
FinProceso
