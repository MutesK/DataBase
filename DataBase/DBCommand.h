#pragma once

/*
	Role 

	Query Progress(Prepare, Bind, Execute)
	DBResultSet Factory
*/


namespace Util
{
	namespace DB
	{
		class DBConnection;
		class DBResultSet;
		class DBCommand abstract
		{
		protected:
			DBConnection* _pConnection;
			std::string		_Query;
			std::shared_ptr<DBResultSet> _pResultSet;
		public:
			DBCommand(DBConnection* const pConnection);
			virtual ~DBCommand();


			void Prepare(const std::string& Query);
			void Reset();

			virtual std::shared_ptr<DBResultSet> Execute() = 0;
			virtual bool Fetch() = 0;
			virtual void Close() = 0;

			virtual void Bind(const int column, const uint8_t& value) = 0;
			virtual void Bind(const int column, const uint16_t& value) = 0;
			virtual void Bind(const int column, const uint32_t& value) = 0;
			virtual void Bind(const int column, const uint64_t& value) = 0;
			virtual void Bind(const int column, const int8_t& value) = 0;
			virtual void Bind(const int column, const int16_t& value) = 0;
			virtual void Bind(const int column, const int32_t& value) = 0;
			virtual void Bind(const int column, const int64_t& value) = 0;
			virtual void Bind(const int column, const double& value) = 0;
			virtual void Bind(const int column, const char* value, const uint32_t length) = 0;

		protected:
			virtual void PrepareImpl() = 0;
			virtual void ResetImpl() = 0;
		};

	}
}

