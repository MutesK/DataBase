#include "MariaDBConnector.h"
#include "MariaDBConnection.h"
#include "MariaDBCommand.h"
#include "DBConnectionService.h"

namespace Util
{
	namespace DB
	{
		MariaDBConnection::MariaDBConnection(DBConnectionService* const pService)
			:DBConnection(pService)
		{
		}

		MariaDBConnection::~MariaDBConnection()
		{
			Close();
		}

		DBCommand* MariaDBConnection::_Prepare()
		{
			return new MariaDBCommand(this);
		}

		bool MariaDBConnection::IsConnectedImpl()
		{
			if (_MySQL == nullptr)
				return false;
			else
				return !mysql_ping(_MySQL);
		}

		bool MariaDBConnection::ConnectImpl()
		{
			if (IsConnected())
				return true;

			if (_MySQL == nullptr)
				_MySQL = mysql_init(nullptr);

			if (_MySQL == nullptr)
			{
				throw new std::exception("Can't Create MySql Object");
			}

			// Connection Option
			my_bool reconnect = false;
			::mysql_options(_MySQL, MYSQL_OPT_RECONNECT, &reconnect);

			uint32_t connectionTimeout = 3;
			::mysql_options(_MySQL, MYSQL_OPT_CONNECT_TIMEOUT, &connectionTimeout);

			std::string charset = "utf8";
			::mysql_options(_MySQL, MYSQL_SET_CHARSET_NAME, charset.c_str());

			const auto ConnectionSetting = _pService->GetSetting();

			if (!mysql_real_connect(_MySQL, ConnectionSetting->_Host.c_str(),
				ConnectionSetting->_User.c_str(), ConnectionSetting->_Passwd.c_str(),
				ConnectionSetting->_db.c_str(), ConnectionSetting->_Port, nullptr, CLIENT_MULTI_STATEMENTS))
			{
				unsigned int errorNo = mysql_errno(_MySQL);
				const char* errorStr = mysql_error(_MySQL);
				const char* sqlstate = mysql_sqlstate(_MySQL);

				std::cout << errorNo << ", " << errorStr << " [STATE]" << sqlstate << std::endl;
				
				return false;
			}

			return true;
		}

		void MariaDBConnection::CloseImpl()
		{
			if (_MySQL == nullptr)
				return;

			::mysql_close(_MySQL);

			_MySQL = nullptr;
		}

		bool MariaDBConnection::KeepAliveImpl()
		{
			return IsConnectedImpl();
		}
	}
}