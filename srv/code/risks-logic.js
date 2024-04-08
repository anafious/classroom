/**
 * 
 * @Before(event = { "CREATE", "UPDATE" }, entity = "riskManagementSrv.Risks")
 * @param {Object} req - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(req) {
    if (req.data.impact > 10000) {
        req.data.criticality = 1;
    } else {
        req.data.criticality = 2;
    }
}