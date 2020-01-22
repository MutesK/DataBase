#pragma once

#include "DBConnectionService.h"

namespace Util
{
	namespace DB
	{
		class MariaDBConnectionService final : public DBConnectionService
		{
		public:
			MariaDBConnectionService(DBConnectionSetting* const pConnectionSetting);
			virtual ~MariaDBConnectionService();


			virtual DBConnection* NewConnection() override;
		};
	}
}