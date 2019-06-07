<?php
namespace App\Facades;

use Illuminate\Support\Facades\Facade;
use App\Models\Opcion;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

class Sidebar extends Facade {

    private static $html;
    
    public static function getFacadeAccessor()
    {
        return 'sidebar';
    }

    private static function make()
    {
        static::$html = '';
        $alls = Opcion::GetByRoleID(Auth::user()->rol_id)->get()->toArray();
        foreach ($alls as $value) {
            if(count($value['childs']) == 0) {
                static::$html .= static::link($value);
            } else {
                static::$html .= static::submenu($value);
            }
        }
    }

    public static function render()
    {
        static::make();
        return static::$html;
    }


    public static function urlPath(array $options)
    {
        if($options['type'] == 'DINAMIC')
        {
            if(Route::has($options['route']))
            {
                $params = !empty($options['parametros']) ? json_decode($options['parametros'], true) : [];
                $url = route($options['route'], $params);
                return $url;
            }
            return 'javascript: void(0);';
        } else {
            return $options['route'];
        }
    }

    public static function link(array $options)
    {
        $url = static::urlPath($options);
        $html = '<li><a href="'.$url.'" target="'.$options['target'].'" title="'.$options['description'].'">';
        $html .= !empty($options['icono']) ? '<i class="'.$options['icono'].'"></i>' : '';
        $html .= '</a></li>';
        return $html;
    }

    public static function submenu(array $options) {
        $html = '<li><a href="javascript: void(0);" title="'.$options['descripcion'].'">';
        $html .= !empty($options['icono']) ? '<i class="'.$options['icono'].'"></i>' : '';
        $html .= '<span class="title">'.$options['label'].'</span>';
        $html .= '<span class="arrow"></span></a>';
        $html .= '<ul class="sub-menu">';
        foreach ($options['childs'] as $value) {
            $html .= static::simpleLink($value);
        }
        $html .= '</ul>';
        $html .= '</li>';
        return $html;
    }

    public static function simpleLink(array $options)
    {
        $url = static::urlPath($options);
        $element = '<li><a href="'.$url.'" target="'.$options['target'].'">';
        $element .= !empty($options['icono']) ? '<i class="'.$options['icono'].'"></i>' : '';
        $element .= $options['label'].'</a></li>';
        return $element;
    }
}