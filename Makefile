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

two:
	@echo 'Iniciando projeto: TWO';
	@cd 02_RestWithASPETUdemy_Other_Verbs/RestWithASPETUdemy && dotnet run RestWithASPETUdemy.csproj;

three:
	@echo 'Iniciando projeto: THREE';
	@cd 03_RestWithASPETUdemy_Other_Connecting_to_database/RestWithASPETUdemy && dotnet run RestWithASPETUdemy.csproj;