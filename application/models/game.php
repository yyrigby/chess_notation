<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Game extends CI_Controller {

	public function update($pgnData) {
		$query = 'INSERT INTO games (event, site, date, round, board, white, whiteELO, black, blackELO, result, pgn, created_at, updated_at, user_id) VALUES (?,?,?,?,?,?,?,?,?,?,?, NOW(), NOW(), ?)';
		$array = array('event' => $pgnData['header']['Event'],
						'site' => $pgnData['header']['Site'],
						'date' => $pgnData['header']['Date'],
						'round' => $pgnData['header']['Round'],
						'board' => $pgnData['header']['Board'],
						'white' => $pgnData['header']['White'],
						'whiteElo' => $pgnData['header']['WhiteELO'],
						'black' => $pgnData['header']['Black'],
						'blackELO' => $pgnData['header']['BlackELO'],
						'result' => $pgnData['header']['Result'],
						'pgn' => $pgnData['pgn'],
						'user_id' => '1');
		$this->db->query($query, $array);
	}










}