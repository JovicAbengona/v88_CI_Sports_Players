<?php
    class Sport extends CI_Model{
        public function getPlayers(){
            $this->db->select("CONCAT(p.first_name, ' ', p.last_name) AS 'player_name', p.gender, p.image, s.name AS 'sport'");
            $this->db->from("players AS p");
            $this->db->join("details AS d", "p.id = d.player_id");
            $this->db->join("sports_details AS s", "d.sports_detail_id = s.id");
            $query = $this->db->get();

            return $query->result_array();
        }
    }
?>