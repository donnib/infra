#!/bin/bash

sudo mount /media/small_external_hdd

rsync -Aavx --progress --delete /mnt/Media/Photos/ /media/small_external_hdd/Photos
rsync -Aavx --progress --delete /mnt/Media/Music/ /media/small_external_hdd/Music
rsync -Aavx --progress --delete /mnt/Media/Audiobooks/ /media/small_external_hdd/Audiobooks
rsync -Aavx --progress --delete /mnt/Media/Files/ /media/small_external_hdd/Files

rsync -Aavx --progress --delete /mnt/Backup /media/small_external_hdd/Backup