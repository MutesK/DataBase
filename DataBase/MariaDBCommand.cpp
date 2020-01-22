#include "MariaDBConnector.h"
#include "MariaDBCommand.h"
#include "MariaDBResultSet.h"
#include "MariaDBConnection.h"
#include "MariaDBBindParameters.h"

namespace Util
{
	namespace DB
	{
		MariaDBCommand::MariaDBCommand(MariaDBConnection* const pConnection)
			:DBCommand(pConnection),
			_MysqlStatement(::mysql_stmt_init(pConnection->_MySQL)),
			_Parameters(std::make_unique<MariaDBInputBindParameters>(_MysqlStatement))
		{
		}

		MariaDBCommand::~MariaDBCommand()
		{
			Close();
		}

		void MariaDBCommand::Bind(const int column, const uint16_t& value)
		{
			_Parameters->SetParameter(column, MYSQL_TYPE_SHORT,
				reinterpret_cast<const char*>(&value), sizeof(uint16_t), true);
		}

		void MariaDBCommand::Bind(const int column, const uint32_t& value)
		{
			_Parameters->SetParameter(column, MYSQL_TYPE_LONG,
				reinterpret_cast<const char*>(&value), sizeof(uint32_t), true);
		}

		void MariaDBCommand::Bind(const int column, const uint64_t& value)
		{
			_Parameters->SetParameter(column, MYSQL_TYPE_LONGLONG,
				reinterpret_cast<const char*>(&value), sizeof(uint64_t), true);
		}

		void MariaDBCommand::Bind(const int column, const int8_t& value)
		{
			_Parameters->SetParameter(column, MYSQL_TYPE_TINY,
				reinterpret_cast<const char*>(&value), sizeof(int8_t));
		}

		void MariaDBCommand::Bind(const int column, const int16_t& value)
		{
			_Parameters->SetParameter(column, MYSQL_TYPE_SHORT,
				reinterpret_cast<const char*>(&value), sizeof(int16_t));
		}

		void MariaDBCommand::Bind(const int column, const int32_t& value)
		{
			_Parameters->SetParameter(column, MYSQL_TYPE_LONG,
				reinterpret_cast<const char*>(&value), sizeof(int32_t));
		}

		void MariaDBCommand::Bind(const int column, const int64_t& value)
		{
			_Parameters->SetParameter(column, MYSQL_TYPE_LONGLONG,
				reinterpret_cast<const char*>(&value), sizeof(int64_t));
		}

		void MariaDBCommand::Bind(const int column, const uint8_t& value)
		{
			_Parameters->SetParameter(column, MYSQL_TYPE_TINY,
				reinterpret_cast<const char*>(&value), sizeof(uint8_t), true);
		}

		void MariaDBCommand::Bind(const int column, const double& value)
		{
			_Parameters->SetParameter(column, MYSQL_TYPE_DOUBLE,
				reinterpret_cast<const char*>(&value), sizeof(double));
		}

		void MariaDBCommand::Bind(const int column, const char* value, const uint32_t length)
		{
			_Parameters->SetParameter(column, MYSQL_TYPE_STRING,
				value, length);
		}


		std::shared_ptr<DBResultSet> MariaDBCommand::Execute()
		{
			_Parameters->Bind();

			if (mysql_stmt_execute(_MysqlStatement))
			{

				unsigned int errorNo = mysql_stmt_errno(_MysqlStatement);
				const char* errorStr = mysql_stmt_error(_MysqlStatement);
				const char* sqlstate = mysql_stmt_sqlstate(_MysqlStatement);

				std::cout << errorNo << ", " << errorStr << " [STATE]" << sqlstate << std::endl;

				throw;
			}

			return std::shared_ptr<DBResultSet>(new MariaDBResultSet(_MysqlStatement));
		}

		void MariaDBCommand::Close()
		{
			mysql_stmt_close(_MysqlStatement);
		}

		bool MariaDBCommand::Fetch()
		{
			if (mysql_stmt_fetch(_MysqlStatement))
			{
				unsigned int errorNo = mysql_stmt_errno(_MysqlStatement);
				const char* errorStr = mysql_stmt_error(_MysqlStatement);
				const char* sqlstate = mysql_stmt_sqlstate(_MysqlStatement);

				std::cout << errorNo << ", " << errorStr << " [STATE]" << sqlstate << std::endl;

				return false;
			}

			return true;
		}

		void MariaDBCommand::PrepareImpl()
		{
			if (mysql_stmt_prepare(_MysqlStatement, _Query.data(), _Query.length()))
			{
				unsigned int errorNo = mysql_stmt_errno(_MysqlStatement);
				const char* errorStr = mysql_stmt_error(_MysqlStatement);
				const char* sqlstate = mysql_stmt_sqlstate(_MysqlStatement);

				std::cout << errorNo << ", " << errorStr << " [STATE]" << sqlstate << std::endl;

				throw;
			}
		}

		void MariaDBCommand::ResetImpl()
		{
			mysql_stmt_reset(_MysqlStatement);
		}
	}
}