#include "MariaDBConnector.h"
#include "MariaDBBindParameters.h"

namespace Util
{
	namespace DB
	{
		MariaDBBindParameters::MariaDBBindParameters(MYSQL_STMT* Statement)
			: _Statement(Statement)
		{
		}

		MariaDBBindParameters::~MariaDBBindParameters()
		{
			delete[] _ArrBind;
		}

		void MariaDBBindParameters::SetParameter(const int column, const enum_field_types bufferType, const char* buffer,
			const unsigned long bufferLength, const bool is_unsigned)
		{
			auto pBind = &_ArrBind[column];
			memset(pBind, 0, sizeof(MYSQL_BIND));

			pBind->buffer_type = bufferType;
			pBind->buffer = const_cast<char *>(buffer);
			pBind->buffer_length = bufferLength;
			pBind->is_unsigned = is_unsigned;
		}


		MariaDBInputBindParameters::MariaDBInputBindParameters(MYSQL_STMT* Statement)
			:MariaDBBindParameters(Statement)
		{
		}

		void MariaDBInputBindParameters::SetParameter(const int column, const enum_field_types bufferType, const char* buffer, const unsigned long bufferLength, const bool is_unsigned)
		{
			if (nullptr == _ArrBind)
			{
				int param = mysql_stmt_param_count(_Statement);

				_ArrBind = new MYSQL_BIND[param];
			}

			MariaDBBindParameters::SetParameter(column, bufferType,
				buffer, bufferLength, is_unsigned);
		}

		void MariaDBInputBindParameters::Bind()
		{
			if (mysql_stmt_bind_param(_Statement, _ArrBind))
			{
				unsigned int errorNo = mysql_stmt_errno(_Statement);
				const char* errorStr = mysql_stmt_error(_Statement);
				const char* sqlstate = mysql_stmt_sqlstate(_Statement);

				std::cout << errorNo << ", " << errorStr << " [STATE]" << sqlstate << std::endl;
				throw;
			}
		}

		MariaDBOutputBindParameters::MariaDBOutputBindParameters(MYSQL_STMT* Statement)
			:MariaDBBindParameters(Statement)
		{
		}

		void MariaDBOutputBindParameters::SetParameter(const int column, const enum_field_types bufferType, const char* buffer, const unsigned long bufferLength, const bool is_unsigned)
		{
			if (nullptr == _ArrBind)
			{
				int param = mysql_stmt_field_count(_Statement);

				_ArrBind = new MYSQL_BIND[param];
			}

			MariaDBBindParameters::SetParameter(column, bufferType,
				buffer, bufferLength, is_unsigned);
		}

		void MariaDBOutputBindParameters::Bind()
		{
			if (mysql_stmt_bind_result(_Statement, _ArrBind))
			{
				unsigned int errorNo = mysql_stmt_errno(_Statement);
				const char* errorStr = mysql_stmt_error(_Statement);
				const char* sqlstate = mysql_stmt_sqlstate(_Statement);

				std::cout << errorNo << ", " << errorStr << " [STATE]" << sqlstate << std::endl;
				throw;
			}
		}

	}
}