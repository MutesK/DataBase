#pragma once

namespace Util
{
	namespace DB
	{
		class MariaDBBindParameters abstract
		{
		protected:
			MYSQL_BIND*		_ArrBind = nullptr;
			MYSQL_STMT*		_Statement = nullptr;
        public:
            MariaDBBindParameters(MYSQL_STMT* Statement);
            virtual ~MariaDBBindParameters();

			virtual void SetParameter(const int column, const enum_field_types bufferType, 
				const char* buffer = nullptr, const unsigned long bufferLength = 0,
				const bool is_unsigned = false);

			virtual void Bind() = 0;
		};

		class MariaDBInputBindParameters final : public MariaDBBindParameters
		{
		public:
			MariaDBInputBindParameters(MYSQL_STMT* Statement);

			virtual void SetParameter(const int column, const enum_field_types bufferType,
				const char* buffer = nullptr, const unsigned long bufferLength = 0,
				const bool is_unsigned = false);

			virtual void Bind() override;
		};

		class MariaDBOutputBindParameters final : public MariaDBBindParameters
		{

		public:
			MariaDBOutputBindParameters(MYSQL_STMT* Statement);

			virtual void SetParameter(const int column, const enum_field_types bufferType,
				const char* buffer = nullptr, const unsigned long bufferLength = 0,
				const bool is_unsigned = false);

			virtual void Bind() override;
		};
	}
}

