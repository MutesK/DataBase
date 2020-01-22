#pragma once

/*
	DBConnection Role 

	Initialize DB Library And Connect
	DBCommand Factory
*/


namespace Util
{
	namespace DB
	{
		class DBConnectionService;
		class DBCommand;
		class DBTask;
		class DBConnection abstract
		{
		protected:
			DBConnectionService* _pService;
		public:
			DBConnection(DBConnectionService* const pService);
			virtual ~DBConnection();

			bool IsConnected();
			bool Connect();
			bool KeepAlive();
			void Close();

			std::shared_ptr<DBCommand> Prepare();

		protected:
			// Automatically Managed Raw Pointer,
			// Don't Delete it
			virtual DBCommand* _Prepare() = 0;

		protected:
			virtual bool IsConnectedImpl() = 0;
			virtual bool ConnectImpl() = 0;
			virtual void CloseImpl() = 0;
			virtual bool KeepAliveImpl() = 0;
		};
	}
}