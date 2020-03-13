#include "MariaDBConnector.h"
#include "MariaDBConnection.h"
#include "DBConnectionSetting.h"
#include "MariaDBConnectionService.h"
#include "MariaDBCommand.h"
#include "MariaDBResultSet.h"

using namespace Util::DB;


void ConnectTest()
{
	DBConnectionSetting Setting;

	Setting._User = "mute";
	Setting._Passwd = "ss640803";
	Setting._Port = 3306;
	Setting._Host = "192.168.0.4";
	Setting._db = "Test";


	MariaDBConnectionService Service(&Setting);
	auto Connection = Service.AcquireConnection();
}


void CreateTableTest()
{
	DBConnectionSetting Setting;

	Setting._User = "mute";
	Setting._Passwd = "ss640803";
	Setting._Port = 3306;
	Setting._Host = "192.168.0.4";
	Setting._db = "Test";


	MariaDBConnectionService Service(&Setting);
	auto Connection = Service.AcquireConnection();

	auto Command = Connection->Prepare();

	Command->Prepare("CREATE TABLE createtable (id INT, label CHAR(30));");
	auto result = Command->Execute();

}

void InsertParameterTest()
{
	DBConnectionSetting Setting;

	Setting._User = "mute";
	Setting._Passwd = "ss640803";
	Setting._Port = 3306;
	Setting._Host = "192.168.0.4";
	Setting._db = "Test";


	MariaDBConnectionService Service(&Setting);
	auto Connection = Service.AcquireConnection();

	auto Command = Connection->Prepare();
	Command->Prepare("INSERT INTO createtable VALUES (? , ?);");
	Command->Bind(0, 1);
	Command->Bind(1, "Test", 4);

	auto result = Command->Execute();
}

void UpdateParameterTest()
{
	DBConnectionSetting Setting;

	Setting._User = "mute";
	Setting._Passwd = "ss640803";
	Setting._Port = 3306;
	Setting._Host = "192.168.0.4";
	Setting._db = "Test";


	MariaDBConnectionService Service(&Setting);
	auto Connection = Service.AcquireConnection();

	auto Command = Connection->Prepare();
	Command->Prepare("UPDATE createtable SET label = ? WHERE id = ?");
	Command->Bind(0, 1);
	Command->Bind(1, "Test", 4);

	auto result = Command->Execute();
}

void SelectParameterTest()
{
	DBConnectionSetting Setting;

	Setting._User = "mute";
	Setting._Passwd = "ss640803";
	Setting._Port = 3306;
	Setting._Host = "192.168.0.4";
	Setting._db = "Test";


	MariaDBConnectionService Service(&Setting);
	auto Connection = Service.AcquireConnection();

	auto Command = Connection->Prepare();
	Command->Prepare("SELECT * FROM createtable where id = ?;");

	Command->Bind(0, 1);
	auto result = Command->Execute();
	

	while (result->Fetch())
	{
		int id;
		std::string label;

		result->Bind(0, id);
		result->Bind(1, label);

		std::cout << "Result data : " << id << ", " << label << std::endl;
	}

}
int main()
{
	SelectParameterTest();


	return 0;
}