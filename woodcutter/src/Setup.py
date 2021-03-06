# -*- coding: utf-8 -*-
from .Gamestate import *
from .Pile import *
from .Card import *
from .GenericActions import *
from .CardActions.GetCardInfo import *


class ParsedLine:
    def __init__(self, indent, pred, player, items, args):
        self.indent = indent
        self.pred = pred
        self.player = player
        self.items = items
        self.args = args


class Parser:
    def __init__(self, version):
        self.cards, self.preds = getInfo(version)

    def initializeSupply(self, supplyString):
        supply = {}
        for item in supplyString.split("~"):
            if item:
                c, i = item.split(":")
                supply[self.cards[int(i)]] = int(c)

        state = Gamestate()

        for cardName in supply:
            cardInfo = getCardInfo(cardName)
            pileCards = cardInfo.getPileCards()
            initialZone = cardInfo.initialZone

            # Look for BM cards
            associates = sum([supply.get(other, 0) for other in pileCards])

            if initialZone == NeutralZones.SUPPLY:
                state.piles.append(Pile(pileCards))
                if associates == 1:
                    state.addCard(cardInfo, NeutralZones.BLACK_MARKET)
                    continue

            for i in range(supply[cardName]):
                state.addCard(cardInfo, initialZone)

        return state

    def parse_items(self, inString):
        items = inString.split("+")
        output = []

        for item in items:
            parts = item.split(":")
            if len(parts) == 2:
                for i in range(int(parts[0])):
                    output.append(self.cards[int(parts[1])])
        return output

    def parse_arg(self, arg, parse=False):
        if ":" in arg:
            return [int(i) for i in arg.split(":")]
        elif parse:
            return self.cards[int(arg)]
        else:
            return int(arg)

    def parseLog(self, logString):
        logLines = logString.split("~")
        parsedLines = []
        parseablePreds = ["WISH_CORRECT", "WISH_WRONG"]

        for line in logLines:
            indent, pred, player, items, args = line.split("|")
            pred = self.preds[int(pred)]
            shouldParse = pred in parseablePreds
            args = (
                [self.parse_arg(a, shouldParse) for a in args.split("+")]
                if args
                else []
            )

            parsedLines.append(
                ParsedLine(
                    int(indent), pred, int(player) - 1, self.parse_items(items), args
                )
            )
        return parsedLines
