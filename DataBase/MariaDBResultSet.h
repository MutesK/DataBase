#pragma once

#include "DBResultSet.h"

namespace Util
{
	namespace DB
	{
		class MariaDBOutputBindParameters;
		class MariaDBResultSet final: public DBResultSet
		{
			struct Heap
			{
				typedef bool heap_t;

				inline void alloc(size_t size)
				{
					if (nullptr == _data)
					{
						_data = new char[size];
						memset(_data, 0, size);
						_size = size;
					}
				}
				inline void free()
				{
					delete[] _data;
				}

				~Heap()
				{
					free();
				}

				char* _data = nullptr;
				size_t _size = 0;
			};

			MYSQL_STMT* _Statement;

			std::unique_ptr<MariaDBOutputBindParameters> _Parameters;
			std::vector<std::shared_ptr<Heap>>			 _ParameterBuffer;

			MariaDBResultSet(MYSQL_STMT* Statement);

			friend class MariaDBCommand;
		public:
			virtual ~MariaDBResultSet();

			virtual bool Fetch() override;

			virtual void Bind(const int column, uint8_t& OUT value) override;
			virtual void Bind(const int column, uint16_t& OUT value) override;
			virtual void Bind(const int column, uint32_t& OUT value) override;
			virtual void Bind(const int column, uint64_t& OUT value) override;
			virtual void Bind(const int column, int8_t& OUT value) override;
			virtual void Bind(const int column, int16_t& OUT value) override;
			virtual void Bind(const int column, int32_t& OUT value) override;
			virtual void Bind(const int column, int64_t& OUT value) override;
			virtual void Bind(const int column, double& OUT value) override;
			virtual void Bind(const int column, std::string& OUT value) override;
		};
	}
}

