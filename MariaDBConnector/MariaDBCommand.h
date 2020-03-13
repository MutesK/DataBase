#pragma once

#include "DBCommand.h"

namespace Util
{
	namespace DB
	{
		class MariaDBConnection;
		class MariaDBInputBindParameters;
		class MariaDBCommand : public DBCommand
		{
			MYSQL_STMT* _MysqlStatement = nullptr;
			std::unique_ptr<MariaDBInputBindParameters>  _Parameters;

			// For Only Make DBConnection Class
			MariaDBCommand(MariaDBConnection* const pConnection);

			friend class MariaDBConnection;
		public:
			virtual ~MariaDBCommand();

			virtual void Close() override;
			
			virtual bool Fetch() override;
			virtual void PrepareImpl() override;
			virtual void ResetImpl() override;

			virtual std::shared_ptr<DBResultSet> Execute() override;
			virtual void Bind(const int column, const uint16_t& value) override;
			virtual void Bind(const int column, const uint32_t& value) override;
			virtual void Bind(const int column, const uint64_t& value) override;
			virtual void Bind(const int column, const int8_t& value) override;
			virtual void Bind(const int column, const int16_t& value) override;
			virtual void Bind(const int column, const int32_t& value) override;
			virtual void Bind(const int column, const int64_t& value) override;
			virtual void Bind(const int column, const uint8_t& value) override;
			virtual void Bind(const int column, const double& value) override;
			virtual void Bind(const int column, const char* value, const uint32_t length) override;
		};
	}
}

