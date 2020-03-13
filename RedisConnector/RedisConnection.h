#pragma once

#include "DBConnection.h"
#include "DBConnectionService.h"

struct redisContext;

namespace Util
{
	namespace DB
	{
		class RedisConnection final : public DBConnection
		{
		private:
			redisContext* _redisConext;
		public:
			RedisConnection(DBConnectionService* const Service);
			virtual ~RedisConnection();

			inline redisContext* GetRedisContext() const
			{
				return _redisConext;
			}

		private:
			virtual DBCommand* _Prepare() override;
			virtual bool IsConnectedImpl() override;
			virtual bool ConnectImpl() override;
			virtual void CloseImpl() override;
			virtual bool KeepAliveImpl() override;

		};
	}
}

