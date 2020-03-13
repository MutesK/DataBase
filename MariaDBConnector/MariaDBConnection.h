#pragma once

#include "DBConnection.h"

namespace Util
{
	namespace DB
	{
		class MariaDBConnection : public DBConnection
		{
			MYSQL* _MySQL = nullptr;

			friend class MariaDBCommand;
			friend class MariaDBConnectionService;

			MariaDBConnection(DBConnectionService* const pService);
		public:
			virtual ~MariaDBConnection();

		protected:
			virtual DBCommand* _Prepare() override;

			virtual bool IsConnectedImpl() override;
			virtual bool ConnectImpl() override;
			virtual void CloseImpl() override;
			virtual bool KeepAliveImpl() override;
		};
	}
}