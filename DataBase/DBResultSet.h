#pragma once

namespace Util
{
	namespace DB
	{
		class DBResultSet abstract
		{
		public:
			DBResultSet() =default;
			virtual ~DBResultSet() = default;
	

			virtual bool Fetch() = 0;

			virtual void Bind(const int column, uint8_t& OUT value) = 0;
			virtual void Bind(const int column, uint16_t& OUT value) = 0;
			virtual void Bind(const int column, uint32_t& OUT value) = 0;
			virtual void Bind(const int column, uint64_t& OUT value) = 0;
			virtual void Bind(const int column, int8_t& OUT value) = 0;
			virtual void Bind(const int column, int16_t& OUT value) = 0;
			virtual void Bind(const int column, int32_t& OUT value) = 0;
			virtual void Bind(const int column, int64_t& OUT value) = 0;
			virtual void Bind(const int column, double& OUT value) = 0;
			virtual void Bind(const int column, std::string& OUT value) = 0;
 		};
	}
}
