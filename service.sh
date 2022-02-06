
mdir = $(magisk --path)

cp "$MODPATH/system/etc/sysconfig/component-overrides.xml" "$mdir/.magisk/mirror/system/etc/sysconfig"

until [[ $(getprop sys.boot_completed) = 1 ]] && [[ $(getprop dev.bootcomplete) = 1 ]] && [[ $(getprop service.bootanim.exit) = 1 ]] && [[ $(getprop init.svc.bootanim) = stopped ]];  do
sleep 3
done

sleep 1

until am startservice com.android.bluetooth/.hid.HidDeviceService; do
sleep 1
done
