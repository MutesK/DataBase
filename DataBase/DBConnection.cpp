#include "MuteNetDB.h"
#include "DBConnection.h"
#include "DBConnectionService.h"
#include "DBCommand.h"

namespace Util
{
	namespace DB
	{
		DBConnection::DBConnection(DBConnectionService* const pService)
			:_pService(pService)
		{
		}

		DBConnection::~DBConnection()
		{
		}

		bool DBConnection::IsConnected()
		{
			if (nullptr == _pService)
			{
				return false;
			}

			return IsConnectedImpl();
		}

		bool DBConnection::Connect()
		{
			Close();

			return ConnectImpl();
		}

		bool DBConnection::KeepAlive()
		{
			if (!IsConnected())
			{
				if (!Connect())
				{
					return false;
				}
			}

			return KeepAliveImpl();
		}

		void DBConnection::Close()
		{
			CloseImpl();
		}

		std::shared_ptr<DBCommand> DBConnection::Prepare()
		{
			return std::shared_ptr<DBCommand>(_Prepare());
		}
	}
}
