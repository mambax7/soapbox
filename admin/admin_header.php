<?php
/**
 * ****************************************************************************
 *
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * @copyright         XOOPS Project
 * @license           http://www.gnu.org/licenses/gpl-2.0.html GNU Public License
 * @package
 * @author            XOOPS Development Team
 *
 * ****************************************************************************
 */

require_once __DIR__ . '/../../../include/cp_header.php';
require_once $GLOBALS['xoops']->path('www/class/xoopsformloader.php');

//require_once __DIR__ . '/../class/utility.php';
//require_once __DIR__ . '/../include/common.php';

$moduleDirName = basename(dirname(__DIR__));

//require_once __DIR__ . '/../include/gtickets.php';

require_once $GLOBALS['xoops']->path('www/kernel/module.php');
require_once $GLOBALS['xoops']->path('www/class/xoopstree.php');
require_once $GLOBALS['xoops']->path('www/class/xoopslists.php');

require_once __DIR__ . '/../class/utility.php';
require_once __DIR__ . '/../class/sbcolumns.php';

if (false !== ($moduleHelper = Xmf\Module\Helper::getHelper($moduleDirName))) {
} else {
    $moduleHelper = Xmf\Module\Helper::getHelper('system');
}
$adminObject = Xmf\Module\Admin::getInstance();

$pathIcon16    = Xmf\Module\Admin::iconUrl('', 16);
$pathIcon32    = Xmf\Module\Admin::iconUrl('', 32);
$pathModIcon32 = $moduleHelper->getModule()->getInfo('modicons32');

// Load language files
$moduleHelper->loadLanguage('admin');
$moduleHelper->loadLanguage('modinfo');
$moduleHelper->loadLanguage('main');

$myts = MyTextSanitizer::getInstance();

if (!isset($GLOBALS['xoopsTpl']) || !($GLOBALS['xoopsTpl'] instanceof XoopsTpl)) {
    require_once $GLOBALS['xoops']->path('class/template.php');
    $xoopsTpl = new XoopsTpl();
}
$sbColumnHandler = new SoapboxSbcolumnsHandler();
