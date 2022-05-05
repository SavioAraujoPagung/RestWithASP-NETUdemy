default: run

run:
	@echo 'Todos escolha qual projeto executar'
db:
	@sudo docker-compose up -d

zero:
	@echo 'Iniciando projeto: ZERO';
	@cd 00_RestWithASPETUdemy/RestWithASPETUdemy && dotnet run RestWithASPETUdemy.csproj;

one:
	@echo 'Iniciando projeto: ONE';
	@cd 01_RestWithASPETUdemy_calculadora/RestWithASPETUdemy && dotnet run RestWithASPETUdemy.csproj;