#include "MariaDBConnector.h"
#include "MariaDBResultSet.h"
#include "MariaDBBindParameters.h"

namespace Util
{
	namespace DB
	{
		MariaDBResultSet::MariaDBResultSet(MYSQL_STMT* Statement)
			:_Statement(Statement),
			_Parameters(std::make_unique<MariaDBOutputBindParameters>(Statement))
		{
		}

		MariaDBResultSet::~MariaDBResultSet()
		{
			mysql_stmt_free_result(_Statement);
		}

		bool MariaDBResultSet::Fetch()
		{
			const int fieldcount = mysql_stmt_field_count(_Statement);

            if (fieldcount <= 0)
                return false;

			_ParameterBuffer.resize(fieldcount);

			MYSQL_RES* res = mysql_stmt_result_metadata(_Statement);
            if (nullptr == res)
                return false;

			int column = 0;
			
			my_bool			 _unsigned;
			enum_field_types _type;

			for (auto& Buffer : _ParameterBuffer)
			{
				_unsigned = false;
				_type = MYSQL_TYPE_NULL;

				auto fieldinfo = mysql_fetch_field_direct(res, column);

                if (nullptr == fieldinfo)
                    return false;

				_unsigned = fieldinfo->flags & UNSIGNED_FLAG;
				_type = fieldinfo->type;

                Buffer = std::make_shared<Heap>();

                switch (fieldinfo->type) {
                case MYSQL_TYPE_NULL: break;
                    // String types
                case MYSQL_TYPE_DECIMAL:
                case MYSQL_TYPE_NEWDECIMAL:
                case MYSQL_TYPE_TINY_BLOB:
                case MYSQL_TYPE_MEDIUM_BLOB:
                case MYSQL_TYPE_LONG_BLOB:
                case MYSQL_TYPE_BLOB:
                case MYSQL_TYPE_VAR_STRING:
                case MYSQL_TYPE_STRING:
                case MYSQL_TYPE_BIT:
                case MYSQL_TYPE_VARCHAR:
                case MYSQL_TYPE_ENUM:
                case MYSQL_TYPE_SET:
                case MYSQL_TYPE_NEWDATE:
                case MYSQL_TYPE_GEOMETRY: 
                    Buffer->alloc(fieldinfo->length);
                    break;
                    // Numeric types
                case MYSQL_TYPE_YEAR:
                case MYSQL_TYPE_TINY:     
                    Buffer->alloc(1); 
                    break;
                case MYSQL_TYPE_SHORT:    
                    Buffer->alloc(2); 
                    break;
                case MYSQL_TYPE_INT24:
                case MYSQL_TYPE_FLOAT:
                case MYSQL_TYPE_LONG:     
                    Buffer->alloc(4); 
                    break;
                case MYSQL_TYPE_LONGLONG:
                case MYSQL_TYPE_DOUBLE:   
                    Buffer->alloc(8); 
                    break;
                default:                  
                    throw;
                }

                _Parameters->SetParameter(column,
                    _type, Buffer->_data, Buffer->_size, _unsigned);

                ++column;
			}

            _Parameters->Bind();


            int ref = mysql_stmt_fetch(_Statement);

            if (ref == MYSQL_NO_DATA)
                return false;

            else if(ref == 1)
            {
                unsigned int errorNo = mysql_stmt_errno(_Statement);
                const char* errorStr = mysql_stmt_error(_Statement);
                const char* sqlstate = mysql_stmt_sqlstate(_Statement);

                std::cout << errorNo << ", " << errorStr << " [STATE]" << sqlstate << std::endl;

                throw;
            }


            return true;

		}
        void MariaDBResultSet::Bind(const int column, uint8_t& OUT value)
        {
            assert(_ParameterBuffer.size() > column);

            const auto buffer = _ParameterBuffer[column];
            if (nullptr == buffer->_data)
                return;

            value = *reinterpret_cast<const uint8_t*>(buffer->_data);
        }

        void MariaDBResultSet::Bind(const int column, uint16_t& OUT value)
        {
            assert(_ParameterBuffer.size() > column);

            const auto buffer = _ParameterBuffer[column];
            if (nullptr == buffer->_data)
                return;

            value = *reinterpret_cast<const uint16_t*>(buffer->_data);
        }

        void MariaDBResultSet::Bind(const int column, uint32_t& OUT value)
        {
            assert(_ParameterBuffer.size() > column);

            const auto buffer = _ParameterBuffer[column];
            if (nullptr == buffer->_data)
                return;

            value = *reinterpret_cast<const uint32_t*>(buffer->_data);
        }

        void MariaDBResultSet::Bind(const int column, uint64_t& OUT value)
        {
            assert(_ParameterBuffer.size() > column);

            const auto buffer = _ParameterBuffer[column];
            if (nullptr == buffer->_data)
                return;

            value = *reinterpret_cast<const uint64_t*>(buffer->_data);
        }

        void MariaDBResultSet::Bind(const int column, int8_t& OUT value)
        {
            assert(_ParameterBuffer.size() > column);

            const auto buffer = _ParameterBuffer[column];
            if (nullptr == buffer->_data)
                return;

            value = *reinterpret_cast<const int8_t*>(buffer->_data);
        }

        void MariaDBResultSet::Bind(const int column, int16_t& OUT value)
        {
            assert(_ParameterBuffer.size() > column);

            const auto buffer = _ParameterBuffer[column];
            if (nullptr == buffer->_data)
                return;

            value = *reinterpret_cast<const int16_t*>(buffer->_data);
        }

        void MariaDBResultSet::Bind(const int column, int32_t& OUT value)
        {
            assert(_ParameterBuffer.size() > column);

            const auto buffer = _ParameterBuffer[column];
            if (nullptr == buffer->_data)
                return;

            value = *reinterpret_cast<const int32_t*>(buffer->_data);
        }

        void MariaDBResultSet::Bind(const int column, int64_t& OUT value)
        {
            assert(_ParameterBuffer.size() > column);

            const auto buffer = _ParameterBuffer[column];
            if (nullptr == buffer->_data)
                return;

            value = *reinterpret_cast<const int64_t*>(buffer->_data);
        }

        void MariaDBResultSet::Bind(const int column, double& OUT value)
        {
            assert(_ParameterBuffer.size() > column);

            const auto buffer = _ParameterBuffer[column];
            if (nullptr == buffer->_data)
                return;

            value = *reinterpret_cast<const double*>(buffer->_data);
        }

        void MariaDBResultSet::Bind(const int column, std::string& OUT value)
        {
            assert(_ParameterBuffer.size() > column);
  
            const auto buffer = _ParameterBuffer[column];
            if (nullptr == buffer->_data)
                return;

            value = std::string(reinterpret_cast<const char*>(buffer->_data), buffer->_size);
        }
	}
}