#pragma once

#include "DBCommand.h"

struct redisContext;

namespace Util
{
	namespace DB
	{
		const std::string REDIS_KEY_PARAMETER_TAG("#");
		const std::string REDIS_PARAMETER_TAG("?");
		const uint32_t MAX_REDIS_COMMAND_ARGUMENTS = 128;

		class RedisCommand : public DBCommand
		{
			int32_t _maxArgument;
			int32_t _keyIndex;
			int32_t _argument;
			uint32_t _argIndices[MAX_REDIS_COMMAND_ARGUMENTS + 1];
			const char* _args[MAX_REDIS_COMMAND_ARGUMENTS + 1];
			const uint64_t _argslen[MAX_REDIS_COMMAND_ARGUMENTS + 1];

			std::vector<std::string> _commandToken;

		public:
			RedisCommand(DBConnection* const pConnection,
				redisContext* const pRedisContext);

			// DBCommand을(를) 통해 상속됨
			virtual std::shared_ptr<DBResultSet> Execute() override;
			virtual bool Fetch() override;
			virtual void Close() override;
			virtual void Bind(const int column, const uint8_t& value) override;
			virtual void Bind(const int column, const uint16_t& value) override;
			virtual void Bind(const int column, const uint32_t& value) override;
			virtual void Bind(const int column, const uint64_t& value) override;
			virtual void Bind(const int column, const int8_t& value) override;
			virtual void Bind(const int column, const int16_t& value) override;
			virtual void Bind(const int column, const int32_t& value) override;
			virtual void Bind(const int column, const int64_t& value) override;
			virtual void Bind(const int column, const double& value) override;
			virtual void Bind(const int column, const char* value, const uint32_t length) override;
			virtual void PrepareImpl() override;
			virtual void ResetImpl() override;
		};
	}
}

