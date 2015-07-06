<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->load->model('design/banner');
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}

        //Banner slider
        $this->data['banners'] = array();
        
        //15 es el banner splider de home (abajo a la izq)
        $results = $this->model_design_banner->getBanner(15);
              
        foreach ($results as $result) {
            if (file_exists(DIR_IMAGE . $result['image'])) {
                $this->data['banners'][] = array(
                    'title' => $result['title'],
                    'link'  => $result['link'],
                    'image' => $result['image']
                );
            }
        }
		

        //21 es el banner principal
        $this->data['bannerPrincipal'] = array();
        $results = $this->model_design_banner->getBanner(21);
              
        foreach ($results as $result) {
            if (file_exists(DIR_IMAGE . $result['image'])) {
                $this->data['bannerPrincipal'][] = array(
                    'title' => $result['title'],
                    'link'  => $result['link'],
                    'image' => $result['image']
                );
            }
        }
		
		//17 es el banner home 1
        $this->data['bannerHome1'] = array();
        $results = $this->model_design_banner->getBanner(17);
              
        foreach ($results as $result) {
            if (file_exists(DIR_IMAGE . $result['image'])) {
                $this->data['bannerHome1'][] = array(
                    'title' => $result['title'],
                    'link'  => $result['link'],
                    'image' => $result['image']
                );
            }
        }


        //18 es el banner home 2
        $this->data['bannerHome2'] = array();
        $results = $this->model_design_banner->getBanner(18);
              
        foreach ($results as $result) {
            if (file_exists(DIR_IMAGE . $result['image'])) {
                $this->data['bannerHome2'][] = array(
                    'title' => $result['title'],
                    'link'  => $result['link'],
                    'image' => $result['image']
                );
            }
        }

		//19 es el banner home 3
        $this->data['bannerHome3'] = array();
        $results = $this->model_design_banner->getBanner(19);
              
        foreach ($results as $result) {
            if (file_exists(DIR_IMAGE . $result['image'])) {
                $this->data['bannerHome3'][] = array(
                    'title' => $result['title'],
                    'link'  => $result['link'],
                    'image' => $result['image']
                );
            }
        }


		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>