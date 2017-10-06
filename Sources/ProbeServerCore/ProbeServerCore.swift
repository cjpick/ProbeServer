import Kitura
import HeliumLogger
import LoggerAPI


public class ProbeServerCore {

public let router = Router()

public init() {
    router.get("/", handler: hello)
    router.get("v1/readings", handler: retreiveReadings)
    router.get("v1/reading/:id", handler: retreiveReading)
}
}

extension ProbeServerCore {

fileprivate func hello (request: RouterRequest, response: RouterResponse, next: @escaping ()->Void) {
    Log.info("Hello")
    response.status(.OK).send("Hello World!")
    next()
}

fileprivate func retreiveReadings (request: RouterRequest, response: RouterResponse, next: @escaping ()->Void) {
    Log.info("retrieve")
    response.status(.OK).send("RetrieveAll")
    next()
}

fileprivate func retreiveReading (request: RouterRequest, response: RouterResponse, next: @escaping ()->Void) {
    Log.info("retrieve")
    Log.info(String(describing: request.parameters))
    
    
    response.status(.OK).send("Retrieve One")
    next()
}
}

