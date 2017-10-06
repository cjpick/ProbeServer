import Kitura
import HeliumLogger
import ProbeServerCore

HeliumLogger.use()

let server = ProbeServerCore()

Kitura.addHTTPServer(onPort: 8080, with: server.router)
Kitura.run()

