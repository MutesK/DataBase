#include "MariaDBConnector.h"
#include "MariaDBConnection.h"
#include "MariaDBConnectionService.h"

namespace Util
{
	namespace DB
	{
		MariaDBConnectionService::MariaDBConnectionService(DBConnectionSetting* const pConnectionSetting)
			:DBConnectionService(pConnectionSetting)
		{
		}

		MariaDBConnectionService::~MariaDBConnectionService()
		{
		}

		DBConnection* MariaDBConnectionService::NewConnection()
		{
			return new MariaDBConnection(this);
		}
	}
}
