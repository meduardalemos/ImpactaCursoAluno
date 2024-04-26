using Microsoft.AspNetCore.Mvc;

namespace ImpactaCursoAluno.Controllers
{
    public class CursoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
