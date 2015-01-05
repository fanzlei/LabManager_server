-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 01 月 03 日 12:05
-- 服务器版本: 5.5.31
-- PHP 版本: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- 表的结构 `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) DEFAULT NULL,
  `interpret` varchar(200) DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- 数据库: `evolve`
--
CREATE DATABASE IF NOT EXISTS `evolve` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `evolve`;

-- --------------------------------------------------------

--
-- 表的结构 `accesslog`
--
-- 使用中(#1146 - Table 'evolve.accesslog' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.accesslog' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `actions`
--
-- 使用中(#1146 - Table 'evolve.actions' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.actions' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `authmap`
--
-- 使用中(#1146 - Table 'evolve.authmap' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.authmap' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `backup_migrate_destinations`
--
-- 使用中(#1146 - Table 'evolve.backup_migrate_destinations' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.backup_migrate_destinations' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `backup_migrate_profiles`
--
-- 使用中(#1146 - Table 'evolve.backup_migrate_profiles' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.backup_migrate_profiles' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `backup_migrate_schedules`
--
-- 使用中(#1146 - Table 'evolve.backup_migrate_schedules' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.backup_migrate_schedules' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `backup_migrate_sources`
--
-- 使用中(#1146 - Table 'evolve.backup_migrate_sources' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.backup_migrate_sources' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `batch`
--
-- 使用中(#1146 - Table 'evolve.batch' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.batch' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `block`
--
-- 使用中(#1146 - Table 'evolve.block' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.block' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `block_custom`
--
-- 使用中(#1146 - Table 'evolve.block_custom' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.block_custom' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `block_node_type`
--
-- 使用中(#1146 - Table 'evolve.block_node_type' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.block_node_type' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `block_role`
--
-- 使用中(#1146 - Table 'evolve.block_role' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.block_role' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `blocked_ips`
--
-- 使用中(#1146 - Table 'evolve.blocked_ips' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.blocked_ips' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache`
--
-- 使用中(#1146 - Table 'evolve.cache' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_admin_menu`
--
-- 使用中(#1146 - Table 'evolve.cache_admin_menu' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_admin_menu' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_block`
--
-- 使用中(#1146 - Table 'evolve.cache_block' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_block' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_bootstrap`
--
-- 使用中(#1146 - Table 'evolve.cache_bootstrap' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_bootstrap' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_field`
--
-- 使用中(#1146 - Table 'evolve.cache_field' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_field' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_filter`
--
-- 使用中(#1146 - Table 'evolve.cache_filter' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_filter' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_form`
--
-- 使用中(#1146 - Table 'evolve.cache_form' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_form' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_image`
--
-- 使用中(#1146 - Table 'evolve.cache_image' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_image' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_l10n_update`
--
-- 使用中(#1146 - Table 'evolve.cache_l10n_update' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_l10n_update' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_libraries`
--
-- 使用中(#1146 - Table 'evolve.cache_libraries' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_libraries' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_media_xml`
--
-- 使用中(#1146 - Table 'evolve.cache_media_xml' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_media_xml' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_menu`
--
-- 使用中(#1146 - Table 'evolve.cache_menu' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_menu' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_page`
--
-- 使用中(#1146 - Table 'evolve.cache_page' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_page' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_path`
--
-- 使用中(#1146 - Table 'evolve.cache_path' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_path' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_token`
--
-- 使用中(#1146 - Table 'evolve.cache_token' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_token' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_update`
--
-- 使用中(#1146 - Table 'evolve.cache_update' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_update' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_views`
--
-- 使用中(#1146 - Table 'evolve.cache_views' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_views' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `cache_views_data`
--
-- 使用中(#1146 - Table 'evolve.cache_views_data' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.cache_views_data' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `ckeditor_input_format`
--
-- 使用中(#1146 - Table 'evolve.ckeditor_input_format' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.ckeditor_input_format' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `ckeditor_settings`
--
-- 使用中(#1146 - Table 'evolve.ckeditor_settings' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.ckeditor_settings' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--
-- 使用中(#1146 - Table 'evolve.comment' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.comment' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `contact`
--
-- 使用中(#1146 - Table 'evolve.contact' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.contact' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `ctools_css_cache`
--
-- 使用中(#1146 - Table 'evolve.ctools_css_cache' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.ctools_css_cache' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `ctools_object_cache`
--
-- 使用中(#1146 - Table 'evolve.ctools_object_cache' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.ctools_object_cache' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `date_format_locale`
--
-- 使用中(#1146 - Table 'evolve.date_format_locale' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.date_format_locale' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `date_format_type`
--
-- 使用中(#1146 - Table 'evolve.date_format_type' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.date_format_type' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `date_formats`
--
-- 使用中(#1146 - Table 'evolve.date_formats' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.date_formats' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `dexp_layerslider`
--
-- 使用中(#1146 - Table 'evolve.dexp_layerslider' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.dexp_layerslider' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_config`
--
-- 使用中(#1146 - Table 'evolve.field_config' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_config' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_config_instance`
--
-- 使用中(#1146 - Table 'evolve.field_config_instance' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_config_instance' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_body`
--
-- 使用中(#1146 - Table 'evolve.field_data_body' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_body' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_comment_body`
--
-- 使用中(#1146 - Table 'evolve.field_data_comment_body' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_comment_body' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_blog_categories`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_blog_categories' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_blog_categories' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_categories`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_categories' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_categories' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_client`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_client' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_client' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_email`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_email' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_email' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_gallery_images`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_gallery_images' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_gallery_images' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_image`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_image' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_image' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_job_title`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_job_title' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_job_title' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_list_description`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_list_description' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_list_description' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_media`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_media' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_media' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_newsletter_body`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_newsletter_body' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_newsletter_body' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_newsletter_categories`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_newsletter_categories' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_newsletter_categories' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_newsletter_list`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_newsletter_list' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_newsletter_list' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_newsletter_template`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_newsletter_template' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_newsletter_template' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_portfolio_categories`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_portfolio_categories' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_portfolio_categories' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_portfolio_category`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_portfolio_category' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_portfolio_category' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_portfolio_images`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_portfolio_images' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_portfolio_images' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_portfolio_url`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_portfolio_url' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_portfolio_url' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_tags`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_tags' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_tags' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_team_email`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_team_email' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_team_email' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_team_facebook_link`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_team_facebook_link' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_team_facebook_link' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_team_google_plus_link`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_team_google_plus_link' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_team_google_plus_link' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_team_image`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_team_image' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_team_image' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_team_linkedin_link`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_team_linkedin_link' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_team_linkedin_link' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_team_position`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_team_position' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_team_position' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_data_field_team_twitter_link`
--
-- 使用中(#1146 - Table 'evolve.field_data_field_team_twitter_link' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_data_field_team_twitter_link' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_body`
--
-- 使用中(#1146 - Table 'evolve.field_revision_body' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_body' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_comment_body`
--
-- 使用中(#1146 - Table 'evolve.field_revision_comment_body' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_comment_body' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_blog_categories`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_blog_categories' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_blog_categories' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_categories`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_categories' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_categories' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_client`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_client' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_client' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_email`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_email' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_email' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_gallery_images`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_gallery_images' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_gallery_images' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_image`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_image' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_image' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_job_title`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_job_title' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_job_title' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_list_description`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_list_description' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_list_description' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_media`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_media' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_media' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_newsletter_body`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_newsletter_body' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_newsletter_body' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_newsletter_categories`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_newsletter_categories' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_newsletter_categories' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_newsletter_list`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_newsletter_list' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_newsletter_list' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_newsletter_template`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_newsletter_template' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_newsletter_template' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_portfolio_categories`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_portfolio_categories' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_portfolio_categories' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_portfolio_category`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_portfolio_category' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_portfolio_category' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_portfolio_images`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_portfolio_images' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_portfolio_images' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_portfolio_url`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_portfolio_url' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_portfolio_url' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_tags`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_tags' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_tags' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_team_email`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_team_email' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_team_email' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_team_facebook_link`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_team_facebook_link' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_team_facebook_link' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_team_google_plus_link`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_team_google_plus_link' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_team_google_plus_link' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_team_image`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_team_image' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_team_image' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_team_linkedin_link`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_team_linkedin_link' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_team_linkedin_link' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_team_position`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_team_position' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_team_position' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `field_revision_field_team_twitter_link`
--
-- 使用中(#1146 - Table 'evolve.field_revision_field_team_twitter_link' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.field_revision_field_team_twitter_link' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `file_display`
--
-- 使用中(#1146 - Table 'evolve.file_display' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.file_display' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `file_managed`
--
-- 使用中(#1146 - Table 'evolve.file_managed' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.file_managed' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `file_usage`
--
-- 使用中(#1146 - Table 'evolve.file_usage' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.file_usage' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `filter`
--
-- 使用中(#1146 - Table 'evolve.filter' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.filter' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `filter_format`
--
-- 使用中(#1146 - Table 'evolve.filter_format' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.filter_format' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `flood`
--
-- 使用中(#1146 - Table 'evolve.flood' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.flood' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `history`
--
-- 使用中(#1146 - Table 'evolve.history' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.history' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `image_dimensions`
--
-- 使用中(#1146 - Table 'evolve.image_dimensions' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.image_dimensions' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `image_effects`
--
-- 使用中(#1146 - Table 'evolve.image_effects' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.image_effects' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `image_styles`
--
-- 使用中(#1146 - Table 'evolve.image_styles' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.image_styles' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `l10n_update_file`
--
-- 使用中(#1146 - Table 'evolve.l10n_update_file' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.l10n_update_file' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `l10n_update_project`
--
-- 使用中(#1146 - Table 'evolve.l10n_update_project' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.l10n_update_project' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `languages`
--
-- 使用中(#1146 - Table 'evolve.languages' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.languages' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `locales_source`
--
-- 使用中(#1146 - Table 'evolve.locales_source' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.locales_source' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `locales_target`
--
-- 使用中(#1146 - Table 'evolve.locales_target' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.locales_target' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `media_filter_usage`
--
-- 使用中(#1146 - Table 'evolve.media_filter_usage' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.media_filter_usage' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `media_list_type`
--
-- 使用中(#1146 - Table 'evolve.media_list_type' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.media_list_type' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `media_type`
--
-- 使用中(#1146 - Table 'evolve.media_type' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.media_type' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `menu_custom`
--
-- 使用中(#1146 - Table 'evolve.menu_custom' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.menu_custom' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `menu_links`
--
-- 使用中(#1146 - Table 'evolve.menu_links' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.menu_links' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `menu_router`
--
-- 使用中(#1146 - Table 'evolve.menu_router' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.menu_router' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `newsletter_list`
--
-- 使用中(#1146 - Table 'evolve.newsletter_list' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.newsletter_list' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `newsletter_newsletter`
--
-- 使用中(#1146 - Table 'evolve.newsletter_newsletter' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.newsletter_newsletter' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `newsletter_subscriber`
--
-- 使用中(#1146 - Table 'evolve.newsletter_subscriber' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.newsletter_subscriber' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `newsletter_template`
--
-- 使用中(#1146 - Table 'evolve.newsletter_template' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.newsletter_template' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `node`
--
-- 使用中(#1146 - Table 'evolve.node' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.node' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `node_access`
--
-- 使用中(#1146 - Table 'evolve.node_access' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.node_access' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `node_comment_statistics`
--
-- 使用中(#1146 - Table 'evolve.node_comment_statistics' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.node_comment_statistics' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `node_counter`
--
-- 使用中(#1146 - Table 'evolve.node_counter' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.node_counter' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `node_revision`
--
-- 使用中(#1146 - Table 'evolve.node_revision' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.node_revision' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `node_type`
--
-- 使用中(#1146 - Table 'evolve.node_type' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.node_type' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `queue`
--
-- 使用中(#1146 - Table 'evolve.queue' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.queue' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `rdf_mapping`
--
-- 使用中(#1146 - Table 'evolve.rdf_mapping' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.rdf_mapping' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `registry`
--
-- 使用中(#1146 - Table 'evolve.registry' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.registry' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `registry_file`
--
-- 使用中(#1146 - Table 'evolve.registry_file' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.registry_file' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `role`
--
-- 使用中(#1146 - Table 'evolve.role' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.role' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `role_permission`
--
-- 使用中(#1146 - Table 'evolve.role_permission' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.role_permission' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `search_dataset`
--
-- 使用中(#1146 - Table 'evolve.search_dataset' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.search_dataset' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `search_index`
--
-- 使用中(#1146 - Table 'evolve.search_index' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.search_index' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `search_node_links`
--
-- 使用中(#1146 - Table 'evolve.search_node_links' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.search_node_links' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `search_total`
--
-- 使用中(#1146 - Table 'evolve.search_total' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.search_total' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `semaphore`
--
-- 使用中(#1146 - Table 'evolve.semaphore' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.semaphore' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `sequences`
--
-- 使用中(#1146 - Table 'evolve.sequences' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.sequences' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `sessions`
--
-- 使用中(#1146 - Table 'evolve.sessions' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.sessions' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `shortcut_set`
--
-- 使用中(#1146 - Table 'evolve.shortcut_set' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.shortcut_set' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `shortcut_set_users`
--
-- 使用中(#1146 - Table 'evolve.shortcut_set_users' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.shortcut_set_users' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `system`
--
-- 使用中(#1146 - Table 'evolve.system' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.system' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `taxonomy_index`
--
-- 使用中(#1146 - Table 'evolve.taxonomy_index' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.taxonomy_index' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `taxonomy_term_data`
--
-- 使用中(#1146 - Table 'evolve.taxonomy_term_data' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.taxonomy_term_data' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `taxonomy_term_hierarchy`
--
-- 使用中(#1146 - Table 'evolve.taxonomy_term_hierarchy' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.taxonomy_term_hierarchy' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `taxonomy_vocabulary`
--
-- 使用中(#1146 - Table 'evolve.taxonomy_vocabulary' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.taxonomy_vocabulary' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `url_alias`
--
-- 使用中(#1146 - Table 'evolve.url_alias' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.url_alias' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `users`
--
-- 使用中(#1146 - Table 'evolve.users' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.users' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `users_roles`
--
-- 使用中(#1146 - Table 'evolve.users_roles' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.users_roles' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `variable`
--
-- 使用中(#1146 - Table 'evolve.variable' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.variable' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `views_display`
--
-- 使用中(#1146 - Table 'evolve.views_display' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.views_display' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `views_view`
--
-- 使用中(#1146 - Table 'evolve.views_view' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.views_view' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `watchdog`
--
-- 使用中(#1146 - Table 'evolve.watchdog' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.watchdog' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `webform`
--
-- 使用中(#1146 - Table 'evolve.webform' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.webform' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `webform_component`
--
-- 使用中(#1146 - Table 'evolve.webform_component' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.webform_component' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `webform_emails`
--
-- 使用中(#1146 - Table 'evolve.webform_emails' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.webform_emails' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `webform_last_download`
--
-- 使用中(#1146 - Table 'evolve.webform_last_download' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.webform_last_download' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `webform_roles`
--
-- 使用中(#1146 - Table 'evolve.webform_roles' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.webform_roles' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `webform_submissions`
--
-- 使用中(#1146 - Table 'evolve.webform_submissions' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.webform_submissions' doesn't exist)

-- --------------------------------------------------------

--
-- 表的结构 `webform_submitted_data`
--
-- 使用中(#1146 - Table 'evolve.webform_submitted_data' doesn't exist)
-- 读取数据时发生错误: (#1146 - Table 'evolve.webform_submitted_data' doesn't exist)
--
-- 数据库: `lab_manager`
--
CREATE DATABASE IF NOT EXISTS `lab_manager` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lab_manager`;

-- --------------------------------------------------------

--
-- 表的结构 `appo`
--

CREATE TABLE IF NOT EXISTS `appo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `date_part` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lab_no` int(11) DEFAULT NULL,
  `pass_status` int(11) DEFAULT '1',
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `name_idx` (`name`),
  KEY `lab_no_idx` (`name`,`lab_no`),
  KEY `lab_no_idx1` (`lab_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `appo`
--

INSERT INTO `appo` (`id`, `date`, `date_part`, `number`, `lab_no`, `pass_status`, `name`) VALUES
(6, '2014-12-22', 1, 3, 1121, 3, 'fanz'),
(9, '2014-12-26', 5, 3, 1125, 2, 'fanz'),
(14, '2014-12-28', 5, 4, 1122, 1, 'zz'),
(20, '2014-12-25', 1, 1, 1124, 1, 'fanz'),
(27, '2014-12-26', 1, 1, 2189, 1, 'fanz'),
(28, '2014-01-24', 3, 3, 1122, 1, 'fanz');

-- --------------------------------------------------------

--
-- 表的结构 `lab`
--

CREATE TABLE IF NOT EXISTS `lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `lab_no` int(11) NOT NULL,
  `describe` varchar(200) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `lab_no_UNIQUE` (`lab_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `lab`
--

INSERT INTO `lab` (`id`, `name`, `lab_no`, `describe`, `picture`) VALUES
(1, '电子实验室', 1121, '电子实验室简介', NULL),
(2, '物理实验室', 1122, '物理实验室简介', NULL),
(3, '生物实验室', 1123, '生物实验室简介', NULL),
(4, '化学实验室', 1126, '化学实验室简介', NULL),
(5, '现代轨道交通实验室', 1124, '现代轨道交通国家实验室将成为轨道交通技术研发的巨大平台，引领中国铁路技术走向世界前列，会为我国的现代化铁路事业作出巨大的贡献', NULL),
(6, '卡文迪许实验室', 1125, '卡文迪许实验室是英国剑桥大学的物理实验室。卡文廸许实验室旧址入口实际上就是它的物理系。剑桥大学建于1209年，历史悠久，与牛津大学同为英国的最高学府。', NULL),
(7, '测试实验室', 2189, '测试描述', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `lab_no` int(11) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `pass_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `lab_no_idx` (`lab_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `pass`, `lab_no`, `phone`, `pass_status`) VALUES
(1, 'fanz', '123', 1121, '14718090417', 1),
(2, '李老师', '123', 1122, '121323', 1),
(3, '张三', '123', 1123, '13232194212', 1),
(4, '李四', '123', 1124, '13532194212', 1),
(5, '王琪', '123', 1125, '13632194212', 1),
(6, '卓八', '123', 1126, '13132194212', 1),
(7, '谢丽丽', '123', 1127, '13332194212', 1),
(8, '陈雯雯', '123', 2189, '15832194212', 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `classes` varchar(45) DEFAULT NULL,
  `pass_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `pass`, `phone`, `classes`, `pass_status`) VALUES
(1, 'fanz', 'qq', '14718090417', '电子11-1', 1),
(2, 'qq', 'qqp', '1223', 'qqq', 1),
(3, 'zz', 'zz', '44444', 'jjjj', 0),
(4, 'xx', 'xx', 'xxxx', 'xxxx', 0),
(5, '??', 'qqqq', '5555', '??12-1', 0);

--
-- 限制导出的表
--

--
-- 限制表 `appo`
--
ALTER TABLE `appo`
  ADD CONSTRAINT `lab_no` FOREIGN KEY (`lab_no`) REFERENCES `lab` (`lab_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `name` FOREIGN KEY (`name`) REFERENCES `user` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- 数据库: `notebook`
--
CREATE DATABASE IF NOT EXISTS `notebook` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `notebook`;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户注册信息' AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `pass`, `phone`, `email`) VALUES
(1, 'fanz', '1112', '14718090417', 'fanz_lei@126.com'),
(3, 'abc', 'abc', NULL, NULL),
(4, 'qq', 'qq', 'qq', 'qq'),
(5, 'fanzz', '1111', NULL, 'fasd2@126.com'),
(6, 'ss', 'ss', NULL, 'fanfs@121.com'),
(7, 'abctt', 'abctt', NULL, 'fanz@123.com'),
(8, 'qqqq', '1111', '14718090417', 'dtf5@126.com'),
(9, 'qqqqq', '1111', '14718090417', 'fgft@126.com'),
(12, 'qqqqqq', '1111', '14718090417', 'dgdty@126.com'),
(13, 'pioi', '1111', '14718090417', 'fht@126.com'),
(15, 'pioii', '1111', '14718090417', 'fht@126.com'),
(17, 'qqq', 'qqqq', '14718090417', 'fgg@126.com');

-- --------------------------------------------------------

--
-- 表的结构 `user_notebook`
--

CREATE TABLE IF NOT EXISTS `user_notebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `user_notebook`
--

INSERT INTO `user_notebook` (`id`, `user_name`, `title`, `content`, `date`, `type`) VALUES
(19, 'qqq', '12', 'fjdslfajlfj', '2014-12-8 上午10:26:23', '2'),
(20, 'qqq', 'ppp', '    ', '2014-12-8 上午10:24:59', '1'),
(21, 'qqq', 'zx', '    ', '2014-12-8 ??9:43:44', '1'),
(23, 'qqq', 'mmmm', '    ', '2014-12-8 上午11:30:33', '1'),
(24, 'qqq', '校长信箱', '    ', '2014-12-8 下午1:16:12', '1'),
(29, 'fanz', '测试', '测试', '2012-12-12', '1'),
(30, 'fanz', '我用', '    ', '2014-12-25 下午10:37:38', '1'),
(32, 'fanz', '标题', '内容', '2012-12-12', '1'),
(33, 'fanz', '无标题', '    ', '2014-12-26 上午10:25:55', '1'),
(34, 'fanz', '我的', '    测试', '2014-12-26 上午10:28:57', '1');
--
-- 数据库: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 表的结构 `pma__bookmark`
--

CREATE TABLE IF NOT EXISTS `pma__bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pma__column_info`
--

CREATE TABLE IF NOT EXISTS `pma__column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pma__designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma__designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- 表的结构 `pma__history`
--

CREATE TABLE IF NOT EXISTS `pma__history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pma__pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pma__recent`
--

CREATE TABLE IF NOT EXISTS `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 转存表中的数据 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"notebook","table":"user_notebook"},{"db":"lab_manager","table":"user"},{"db":"lab_manager","table":"appo"},{"db":"notebook","table":"user"},{"db":"lab_manager","table":"teacher"},{"db":"lab_manager","table":"lab"},{"db":"lab_manager","table":"aaa"},{"db":"information_schema","table":"EVENTS"},{"db":"mysql","table":"user"}]');

-- --------------------------------------------------------

--
-- 表的结构 `pma__relation`
--

CREATE TABLE IF NOT EXISTS `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_coords`
--

CREATE TABLE IF NOT EXISTS `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_info`
--

CREATE TABLE IF NOT EXISTS `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- 表的结构 `pma__tracking`
--

CREATE TABLE IF NOT EXISTS `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__userconfig`
--

CREATE TABLE IF NOT EXISTS `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 转存表中的数据 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-12-24 11:33:41', '{"lang":"zh_CN"}');
--
-- 数据库: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- 存储过程
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
