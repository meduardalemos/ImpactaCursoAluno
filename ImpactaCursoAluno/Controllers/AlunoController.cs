using Microsoft.AspNetCore.Mvc;

namespace ImpactaCursoAluno.Controllers
{
    public class AlunoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
