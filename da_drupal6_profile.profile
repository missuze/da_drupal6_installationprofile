<?php
/********************************
 *           DETAILS            *
 ********************************/
function da_drupal6_profile_profile_details() {
  return array ( 'name' => 'DigitisedArt Drupal 6', 'description' => 'Installation profile for DigitisedArt with Drupal 6', );
}

/********************************
 *           MODULES            *
 ********************************/
function da_drupal6_profile_profile_modules() {
  return array ( 0 => 'admin_menu', 1 => 'backup_migrate', 2 => 'block', 3 => 'color', 4 => 'comment', 5 => 'content', 6 => 'content_access', 7 => 'content_copy', 8 => 'ctools', 9 => 'date_api', 10 => 'date_timezone', 11 => 'locale', 12 => 'date', 13 => 'dblog', 14 => 'filefield', 15 => 'imagefield', 16 => 'digitisedart', 17 => 'digitisedart_exhibitions', 18 => 'imageapi', 19 => 'fieldgroup', 20 => 'digitisedart_artists', 21 => 'filter', 22 => 'help', 23 => 'translation', 24 => 'i18nstrings', 25 => 'i18n', 26 => 'i18ncontent', 27 => 'i18nblocks', 28 => 'menu', 29 => 'i18nsync', 30 => 'taxonomy', 31 => 'i18ntaxonomy', 32 => 'image', 33 => 'taxonomy_image', 34 => 'imagecache', 35 => 'imageapi_gd', 36 => 'imageapi_imagemagick', 37 => 'jquery_ui', 38 => 'imagecache_ui', 39 => 'digitisedart_collections', 40 => 'epsacrop', 41 => 'views', 42 => 'link', 43 => 'date_locale', 44 => 'masquerade', 45 => 'i18nmenu', 46 => 'menu_breadcrumb', 47 => 'node', 48 => 'optionwidgets', 49 => 'number', 50 => 'text', 51 => 'path', 52 => 'path_redirect', 53 => 'token', 54 => 'php', 55 => 'profile_generator', 56 => 'search', 57 => 'shadowbox', 58 => 'site_map', 59 => 'system', 60 => 'i18nviews', 61 => 'image_attach', 62 => 'taxonomy_image_attach', 63 => 'taxonomy_multi_edit', 64 => 'nodereference', 65 => 'pathauto', 66 => 'i18ncck', 67 => 'update', 68 => 'user', 69 => 'libraries', 70 => 'views_export', 71 => 'views_php', 72 => 'views_slideshow', 73 => 'views_slideshow_cycle', 74 => 'views_ui', 75 => 'wysiwyg', 76 => 'xmlsitemap', 77 => 'xmlsitemap_engines', 78 => 'xmlsitemap_node', 79 => 'install_profile_api',);
}

/********************************
 *            TASKS             *
 ********************************/
function da_drupal6_profile_profile_tasks() {

/********************************
 *     INSTALL PROFILE API      *
 ********************************/
install_include(da_drupal6_profile_profile_modules());


/********************************
 *      CUSTOM NODE TYPES       *
 ********************************/
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('digitisedart', 'Digitised Art', 'node', 'Fields required for the Digitised Art module.', '', '1', 'Title', '0', '', '0', '1', '1', '0', '')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('digitisedart_artist', 'Digitisedart Artist', 'node', '', '', '1', 'Photographer Name', '1', 'Biography', '0', '1', '1', '0', '')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('digitisedart_collection', 'Digitisedart Collection', 'node', 'DigitisedArt Collection', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', '')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('digitisedart_exhibition', 'Digitisedart Exhibition', 'node', 'DigitisedArt Exhibition', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', '')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('fair', 'Fair', 'node', 'Details of fair/event', '', '1', 'Title', '1', 'Details', '0', '1', '1', '0', '')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('frontpageimage', 'FrontPageImage', 'node', '', '', '1', 'Artist', '1', 'Body', '0', '1', '1', '0', '')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('news', 'News', 'node', 'News item', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', '')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('page', 'Page', 'node', 'A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', 'page')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('press', 'Press', 'node', 'Content type for press release or press coverage.', '', '1', 'Title', '1', 'Details', '0', '1', '1', '0', '')");
db_query("INSERT INTO {node_type} (type, name, module, description, help, has_title, title_label, has_body, body_label, min_word_count, custom, modified, locked, orig_type) VALUES ('publication', 'Publication', 'node', 'For Publications, CD-ROM\'s and other published literature.', '', '1', 'Title', '1', 'Body', '0', '1', '1', '0', '')");


/********************************
 *    VOCABULARIES AND TERMS     *
 ********************************/
$tids = array(0 => 0);
/********************************
 *  TAXONOMY: EXHIBITION TYPE   *
 ********************************/
$vid = install_taxonomy_add_vocabulary('Exhibition type', array ( ), array ( 'name' => 'Exhibition type', 'description' => '', 'help' => '', 'relations' => '1', 'hierarchy' => '1', 'multiple' => '1', 'required' => '1', 'tags' => '0', 'module' => 'taxonomy', 'weight' => '0', 'language' => '', ));

$term = array ( 'name' => 'Drawings', 'description' => '', 'weight' => '0', 'language' => '', 'trid' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'Other', 'description' => '', 'weight' => '0', 'language' => '', 'trid' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'Paintings', 'description' => '', 'weight' => '0', 'language' => '', 'trid' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'Photography', 'description' => '', 'weight' => '0', 'language' => '', 'trid' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'Sculpture', 'description' => '', 'weight' => '0', 'language' => '', 'trid' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

/********************************
 *     TAXONOMY: PRESS TYPE      *
 ********************************/
$vid = install_taxonomy_add_vocabulary('Press type', array ( 'press' => 'press', ), array ( 'name' => 'Press type', 'description' => '', 'help' => '', 'relations' => '1', 'hierarchy' => '1', 'multiple' => '0', 'required' => '1', 'tags' => '0', 'module' => 'taxonomy', 'weight' => '0', 'language' => '', ));

$term = array ( 'name' => 'Press coverage', 'description' => '', 'weight' => '0', 'language' => '', 'trid' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'Press release', 'description' => '', 'weight' => '0', 'language' => '', 'trid' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);


