
mdir=$(magisk --path)


chmod "$MODPATH/system/etc/sysconfig/component-overrides.xml" 0 0 644

cp "$MODPATH"  "$mdir/.magisk/modules/"
