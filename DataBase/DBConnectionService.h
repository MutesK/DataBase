#pragma once

#include "DBConnectionSetting.h"

namespace Util
{
	namespace DB
	{
		class DBConnection;
		class DBConnectionService abstract
		{
		protected:
			DBConnectionSetting* _pConnectionSetting;
		public:
			DBConnectionService(DBConnectionSetting* const pConnectionSetting);

			DBConnectionSetting* GetSetting() const;

			std::shared_ptr<DBConnection> AcquireConnection();

		protected:
			std::shared_ptr<DBConnection> AcquireConnectionImpl();

			// Automatically Managed Point
			// Don't Call Delete DBConnection
			virtual DBConnection* NewConnection() = 0;
		};

		inline DBConnectionSetting* DBConnectionService::GetSetting() const
		{
			return _pConnectionSetting;
		}
	}
}