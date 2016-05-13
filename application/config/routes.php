<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$route['default_controller'] = "main";
$route['404_override'] = '';
$route['games/update_game'] = "games/update_game";
$route['profile'] = "main/profile";

//User related controller
$route['logoff'] = 'users/logoff';
$route['users/signin'] = 'users/login';
$route['users/register'] = 'users/register';


//Load chess pages
$route['view_game/(:any)'] = "games/view_game/$1";
$route['my_games'] = 'games/my_games';
$route['paste_pgn'] = 'main/paste_pgn';


//chess related controller


//Edit Personal Profile controllers
$route['users/edit'] = 'users/edit_info';
$route['users/update_password'] = 'users/update_password';





/* End of file routes.php */
/* Location: ./application/config/routes.php */