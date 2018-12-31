import os
from django.shortcuts import get_object_or_404, render
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "ceviri_net.settings")
import django
django.setup()

# your imports, e.g. Django models
from woodcutter.models import GameLog
from woodcutter.src import *
from woodcutter import *

minBound = input('smallest gameNum?')
maxBound = input('largest gameNum?')

for log in GameLog.objects.filter(game_id__lt = maxBound).filter(game_id__gt = minBound):
    players = log.players.split('~')

    try:
        parsedLog, supply = unpack(log.log, log.supply)
        blockLengths = get_blocklengths(parsedLog)
        gameStates = parse_everything(parsedLog, blockLengths, supply)
        log.valid = gameStates[-1].valid
        log.save()
    except:
        log.valid = False
        log.save()
