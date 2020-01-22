#include "MuteNetDB.h"
#include "DBResultSet.h"
#include "DBConnection.h"
#include "DBCommand.h"


namespace Util
{
	namespace DB
	{
		DBCommand::DBCommand(DBConnection* const pConnection)
			:_pResultSet(nullptr),
			_pConnection(pConnection)
		{
		}

		DBCommand::~DBCommand()
		{
		}

		void DBCommand::Prepare(const std::string& Query)
		{
			_Query = Query;

			PrepareImpl();
		}

		void DBCommand::Reset()
		{
			ResetImpl();
		}


	}
}