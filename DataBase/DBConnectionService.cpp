#include "MuteNetDB.h"
#include "DBConnectionService.h"

#include "DBConnection.h"


namespace Util
{
	namespace DB
	{
		DBConnectionService::DBConnectionService(DBConnectionSetting* const pConnectionSetting)
			:_pConnectionSetting(pConnectionSetting)
		{
		}

		std::shared_ptr<DBConnection> DBConnectionService::AcquireConnection()
		{
			auto pConnection = AcquireConnectionImpl();

			if (nullptr == pConnection)
			{
				throw;
			}

			return pConnection;
		}

		std::shared_ptr<DBConnection> DBConnectionService::AcquireConnectionImpl()
		{
			const auto pConnection = std::shared_ptr<DBConnection>(NewConnection());

			if (pConnection == nullptr)
			{
				return nullptr;
			}


			if (!pConnection->Connect())
			{
				throw;
			}

			return pConnection;

		}
	}
}