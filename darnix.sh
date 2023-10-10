#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? IZIN DULU KE @tau_samawa $0; exit 1
fi; exit $res
BZh91AY&SY����  (߀ ���.�����0MkV�����O&I�<���i�)���2�4�4�  ��h J(i�)�����ڞ��4 2�@�mL6����k9l�V`���$G�{LL��%.�kVEk-��a��k*I�+�����(D�^r��qW�-z4�Ԧ'�4�r@���smiّ�QI���u��'���< �f�*�栦
���z���u����*�E"8{��m�m*n<s���Ǆ�AN�`M�[0B��kJ²i�BD[�!I����̎&�&��-�щz@�4���T��OD�	��]럣R�(<��{32���E���H��qV���-q�w�EaE48{2�f*�D�p�+S���	
����[�3c& X=ω����)�o�<