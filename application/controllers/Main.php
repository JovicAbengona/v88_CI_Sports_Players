<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller{
    public function index(){
		if($this->session->userdata("players") == NULL){
			
			$this->load->model("Sport");
			$query = $this->Sport->getPlayers();
	
			$this->session->set_userdata("players", $query);
		}
        $this->load->view("index");
    }

	public function searchPlayers(){
		/*
			Backup players session in a different session and us it to reset its value everytime we run searchPlayers
		*/
		if($this->session->userdata("players_backup") == NULL)
			$this->session->set_userdata("players_backup", $this->session->userdata("players"));
		
		$this->session->set_userdata("players", $this->session->userdata("players_backup"));

		/*
			Put post data in session and use it to determine if a checkbox is checked or not
		*/
		$this->session->set_userdata("checkbox_female", $this->input->post("female"));
		$this->session->set_userdata("checkbox_male", $this->input->post("male"));
		$this->session->set_userdata("checkbox_basketball", $this->input->post("basketball"));
		$this->session->set_userdata("checkbox_volleyball", $this->input->post("volleyball"));
		$this->session->set_userdata("checkbox_baseball", $this->input->post("baseball"));
		$this->session->set_userdata("checkbox_soccer", $this->input->post("soccer"));
		$this->session->set_userdata("checkbox_football", $this->input->post("football"));

		/*
			Place filters in an array and loop through it later
		*/
		$filters = array();
		
		if($this->input->post("female") != NULL)
			$filters["gender"][] = $this->input->post("female");
		if($this->input->post("male") != NULL)
			$filters["gender"][] = $this->input->post("male");
		if($this->input->post("basketball") != NULL)
			$filters["sport"][] = $this->input->post("basketball");
		if($this->input->post("volleyball") != NULL)
			$filters["sport"][] = $this->input->post("volleyball");
		if($this->input->post("baseball") != NULL)
			$filters["sport"][] = $this->input->post("baseball");
		if($this->input->post("soccer") != NULL)
			$filters["sport"][] = $this->input->post("soccer");
		if($this->input->post("football") != NULL)
			$filters["sport"][] = $this->input->post("football");

		$players = array();

		foreach($this->session->userdata("players") AS $player){
			if(isset($filters["gender"]) AND !isset($filters["sport"])){
				foreach($filters["gender"] AS $gender){
					if($player["gender"] == $gender)
						$players[] = $player;
				}
			}
			else if(isset($filters["sport"]) AND !isset($filters["gender"])){
				foreach($filters["sport"] AS $sport){
					if($player["sport"] == $sport)
						$players[] = $player;
				}
			}
			else if(isset($filters["gender"]) AND isset($filters["sport"])){
				foreach($filters["gender"] AS $gender){
					foreach($filters["sport"] AS $sport){
						if($player["gender"] == $gender AND $player["sport"] == $sport)
							$players[] = $player;
					}
				}
			}
			else
				$players[] = $player;
		}

		if($players == NULL)
			$this->session->set_userdata("players", "None");
		else
			$this->session->set_userdata("players", $players);
		redirect("/");
	}
}