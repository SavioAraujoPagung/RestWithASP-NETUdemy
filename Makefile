default: run

run:
	@echo 'Todos escolha qual projeto executar'
db:
	@sudo docker-compose up -d

zero:
	@echo 'Iniciando projeto: ZERO';
	@cd 00_RestWithASPNETUdemy/RestWithASPNETUdemy && dotnet run RestWithASPNETUdemy.csproj;

one:
	@echo 'Iniciando projeto: ONE';
	@cd 01_RestWithASPNETUdemy_calculadora/RestWithASPNETUdemy && dotnet run RestWithASPNETUdemy.csproj;

two:
	@echo 'Iniciando projeto: TWO';
	@cd 02_RestWithASPNETUdemy_Other_Verbs/RestWithASPNETUdemy && dotnet run RestWithASPNETUdemy.csproj;

three:
	@echo 'Iniciando projeto: THREE';
	@cd 03_RestWithASPNETUdemy_Connecting_to_database/RestWithASPNETUdemy && dotnet run RestWithASPNETUdemy.csproj;