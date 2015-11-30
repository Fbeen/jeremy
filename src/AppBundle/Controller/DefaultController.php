<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    /**
     * @Route("/{slug}", name="homepage")
     */
    public function indexAction($slug = 'homepage')
    {
        $em = $this->getDoctrine()->getManager();
        
        $page = $em->getRepository('AppBundle:Page')->findOneBy(array('slug' => $slug));

        if (!$page) {
            return $this->render('TwigBundle:Exception:error404.html.twig');
        }
        
        // https://www.techpunch.co.uk/development/render-string-twig-template-symfony2

        $twig = clone $this->get('twig');
        $twig->setLoader(new \Twig_Loader_String());

        return new Response($twig->render(
                $page->getBody(),
                array('title' => $page->getTitle())
        ));
    }

    /**
     * @Route("block/{slug}", name="block")
     */
    public function blockAction($slug)
    {
        $em = $this->getDoctrine()->getManager();
        
        $block = $em->getRepository('AppBundle:Block')->findOneBy(array('slug' => $slug));

        if (!$block) {
            throw $this->createNotFoundException('Block "' . $block . '" niet gevonden.');
        }
        
        $twig = clone $this->get('twig');
        $twig->setLoader(new \Twig_Loader_String());

        return new Response($twig->render(
                $block->getBody()
        ));
    }

}
