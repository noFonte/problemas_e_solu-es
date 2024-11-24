<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitfd398a330ef9d243085e383d781ebe99
{
    public static $prefixLengthsPsr4 = array (
        'R' => 
        array (
            'Root\\Html\\' => 10,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Root\\Html\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitfd398a330ef9d243085e383d781ebe99::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitfd398a330ef9d243085e383d781ebe99::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitfd398a330ef9d243085e383d781ebe99::$classMap;

        }, null, ClassLoader::class);
    }
}