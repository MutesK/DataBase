#include "Precompile.h"
#include "RedisConnection.h"
#include "RedisCommand.h"

namespace Util
{
	namespace DB
	{
		Util::DB::RedisConnection::RedisConnection(DBConnectionService* const Service)
			:DBConnection(Service),
			_redisConext(nullptr)
		{
		}

		RedisConnection::~RedisConnection()
		{
			Close();
		}

		DBCommand* Util::DB::RedisConnection::_Prepare()
		{
			auto pCommand = new RedisCommand()
		}

		bool Util::DB::RedisConnection::IsConnectedImpl()
		{
			return false;
		}

		bool Util::DB::RedisConnection::ConnectImpl()
		{
			return false;
		}

		void Util::DB::RedisConnection::CloseImpl()
		{
		}

		bool Util::DB::RedisConnection::KeepAliveImpl()
		{
			return false;
		}

	}
}