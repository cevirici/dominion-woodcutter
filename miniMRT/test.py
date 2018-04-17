from urllib import parse, request
import re
import datetime
import sched
import time
import ast


def ping(station):
    data = "ScriptManager1=UP1|ddlStation&__LASTFOCUS=&__EVENTTARGET=ddlStation&__EVENTARGUMENT=&__VIEWSTATE=%2FwEPDwUKMTgzMTU4ODI4Mg9kFgICAw9kFgICAw9kFgJmD2QWBAIBDxYCHgdWaXNpYmxlaBYGZg8PFgIeBFRleHQFAzc3MGRkAgEPD2QWBB4Lb25tb3VzZW92ZXIFJHJldHVybiBjaGFuZ2VCdG5JbWFnZSh0aGlzLCAnb3ZlcicpOx4Kb25tb3VzZW91dAUjcmV0dXJuIGNoYW5nZUJ0bkltYWdlKHRoaXMsICdvdXQnKTtkAgMPFgIfAGhkAgMPFgIfAGcWBAIBDxBkEBVUBlNlbGVjdBBBZG1pcmFsdHkgKE5TMTApDkFsanVuaWVkIChFVzkpEUFuZyBNbyBLaW8gKE5TMTYpDkJhcnRsZXkgKENDMTIpD0JheSBGcm9udCAoQ0UyKQtCZWRvayAoRVc1KRJCaXNoYW4gKENDMTUvTlMxNykPQm9vbiBMYXkgKEVXMjcpFkJvdGFuaWMgR2FyZGVucyAoQ0MxOSkPQnJhZGRlbGwgKE5TMTgpEEJyYXMgQmFzYWggKENDMikMQnVnaXMgKEVXMTIpEUJ1a2l0IEJhdG9rIChOUzIpEkJ1a2l0IEdvbWJhayAoTlMzKRJCdW9uYSBWaXN0YSAoQ0MyMikQQ2FsZGVjb3R0IChDQzE3KRRDaGFuZ2kgQWlycG9ydCAoQ0cyKRVDaGluZXNlIEdhcmRlbiAoRVcyNSkTQ2hvYSBDaHUgS2FuZyAoTlM0KRVDaXR5IEhhbGwgKEVXMTMvTlMyNSkPQ2xlbWVudGkgKEVXMjMpE0NvbW1vbndlYWx0aCAoRVcyMCkMRGFrb3RhIChDQzgpFkRob2J5IEdoYXV0IChDQzEvTlMyNCkMRG92ZXIgKEVXMjIpD0VzcGxhbmFkZSAoQ0MzKQtFdW5vcyAoRVc3KQpFeHBvIChDRzEpEkZhcnJlciBSb2FkIChDQzIwKRFHVUwgQ2lyY2xlIChFVzMwKRNIYXJib3VyRnJvbnQgKENDMjkpFEhhdyBQYXIgVmlsbGEgKENDMjUpFkhvbGxhbmQgVmlsbGFnZSAoQ0MyMSkPSm9vIEtvb24gKEVXMjkpFkp1cm9uZyBFYXN0IChFVzI0L05TMSkOS2FsbGFuZyAoRVcxMCkPS2VtYmFuZ2FuIChFVzYpEUtlbnQgUmlkZ2UgKENDMjQpDUtoYXRpYiAoTlMxNCkMS3JhbmppIChOUzYpFExhYnJhZG9yIFBhcmsgKENDMjcpD0xha2VzaWRlIChFVzI2KQ9MYXZlbmRhciAoRVcxMSkTTG9yb25nIENodWFuIChDQzE0KRFNYWNQaGVyc29uIChDQzEwKRVNYXJpbmEgQmF5IChOUzI3L0NFMSkYTWFyaW5hIFNvdXRoIFBpZXIgKE5TMjgpD01hcnNpbGluZyAoTlM3KRBNYXJ5bW91bnQgKENDMTYpEU1vdW50YmF0dGVuIChDQzcpDU5ld3RvbiAoTlMyMSkUTmljb2xsIEhpZ2h3YXkgKENDNSkNTm92ZW5hIChOUzIwKRBPbmUtTm9ydGggKENDMjMpDk9yY2hhcmQgKE5TMjIpEk91dHJhbSBQYXJrIChFVzE2KRRQYXNpciBQYW5qYW5nIChDQzI2KQ9QYXNpciBSaXMgKEVXMSkUUGF5YSBMZWJhciAoQ0M5L0VXOCkOUGlvbmVlciAoRVcyOCkPUHJvbWVuYWRlIChDQzQpEVF1ZWVuc3Rvd24gKEVXMTkpGVJhZmZsZXMgUGxhY2UgKEVXMTQvTlMyNikOUmVkaGlsbCAoRVcxOCkQU2VtYmF3YW5nIChOUzExKRBTZXJhbmdvb24gKENDMTMpC1NpbWVpIChFVzMpD1NvbWVyc2V0IChOUzIzKQ1TdGFkaXVtIChDQzYpD1RhaSBTZW5nIChDQzExKQ5UYW1waW5lcyAoRVcyKRFUYW5haCBNZXJhaCAoRVc0KRRUYW5qb25nIFBhZ2FyIChFVzE1KRRUZWxvayBCbGFuZ2FoIChDQzI4KRJUaW9uZyBCYWhydSAoRVcxNykQVG9hIFBheW9oIChOUzE5KRRUdWFzIENyZXNjZW50IChFVzMxKRBUdWFzIExpbmsgKEVXMzMpFVR1YXMgV2VzdCBSb2FkIChFVzMyKQ9Xb29kbGFuZHMgKE5TOCkNWWV3IFRlZSAoTlM1KRNZaW8gQ2h1IEthbmcgKE5TMTUpDVlpc2h1biAoTlMxMykVVAZTZWxlY3QDQURNA0FMSgNBTUsEQ0JMWQRDQkZUA0JESwRDQlNIA0JOTARDQlROA0JETARDQkJTA0JHUwNCQlQDQkdCBENCTlYEQ0NEVANDR0EDQ05HA0NDSwNDVEgDQ0xFA0NPTQRDREtUBENEQkcDRFZSBENFUE4DRVVOA1hQTwRDRlJSA0dDTARDSEJGBENIUFYEQ0hMVgNKS04DSlVSA0tBTANLRU0EQ0tSRwNLVEIDS1JKBENMQkQDTEtTA0xWUgRDTFJDBENNUFMEQ01SQgNNU1ADTVNMBENNUk0EQ01CVANORVcEQ05DSANOT1YEQ09OSANPUkMDT1RQBENQUEoDUFNSBENQWUwDUE5SBENQTU4DUVVFA1JGUANSREgDU0JXBENTRVIDU0lNA1NPTQRDU0RNBENUU0cDVEFNA1ROTQNUUEcEQ1RMQgNUSUIDVEFQA1RDUgNUTEsDVFdSA1dETANZV1QDWUNLA1lJUxQrA1RnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2cWAWZkAgMPZBYCAgMPD2QWBB8CBSRyZXR1cm4gY2hhbmdlQnRuSW1hZ2UodGhpcywgJ292ZXInKTsfAwUjcmV0dXJuIGNoYW5nZUJ0bkltYWdlKHRoaXMsICdvdXQnKTtkZGa4D5yhNAjE%2BxcYb1UCG0SKuN1d&__VIEWSTATEGENERATOR=CA0B0334&stnCode=&stnName=&ddlStation={}&"
    data = data.format(station)
    headers = {
                'Content-Type': 'application/x-www-form-urlencoded',
                'X-MicrosoftAjax': 'Delta=true',
                'Referer': 'http://trainarrivalweb.smrt.com.sg/',
                'Host': 'trainarrivalweb.smrt.com.sg',
                'User-Agent': "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0"
            }

    req = request.Request("http://trainarrivalweb.smrt.com.sg/default.aspx",
                          data=data.encode('utf-8'),
                          headers=headers)

    resp = request.urlopen(req)
    return resp.read().decode('utf-8')


def parse(raw):
    matches = re.finditer(r'(?s)id="gvTime".*?width:175px;">(N/A|.*?min).*?width:175px;">(N/A|.*?min).*?<td>(.*?)</td><td>(.*?)</td>',
                          raw)
    data = []
    for match in matches:
        cand = match.group(1).replace(' min', '')
        if cand != 'N/A' and cand != '':
            data.append([int(cand), match.group(3)])

        cand = match.group(2).replace(' min', '')
        if cand != 'N/A' and cand != '':
            data.append([int(cand), match.group(4)])

    return data


stats = ["ADM", "ALJ", "AMK", "CBLY", "CBFT", "BDK", "CBSH", "BNL", "CBTN", "BDL", "CBBS", "BGS", "BBT", "BGB", "CBNV", "CCDT", "CGA", "CNG", "CCK", "CTH", "CLE", "COM", "CDKT", "CDBG", "DVR", "CEPN", "EUN", "XPO", "CFRR", "GCL", "CHBF", "CHPV", "CHLV", "JKN", "JUR", "KAL", "KEM", "CKRG", "KTB", "KRJ", "CLBD", "LKS", "LVR", "CLRC", "CMPS", "CMRB", "MSP", "MSL", "CMRM", "CMBT", "NEW", "CNCH", "NOV", "CONH", "ORC", "OTP", "CPPJ", "PSR", "CPYL", "PNR", "CPMN", "QUE", "RFP", "RDH", "SBW", "CSER", "SIM", "SOM", "CSDM", "CTSG", "TAM", "TNM", "TPG", "CTLB", "TIB", "TAP", "TCR", "TLK", "TWR", "WDL", "YWT", "YCK", "YIS"]

statNames = ["Admiralty", "Aljunied", "Ang Mo Kio", "Bartley", "Bayfront", "Bedok", "Bishan", "Boon Lay", "Botanic Gardens", "Braddell", "Bras Basah", "Bugis", "Bukit Batok", "Bukit Gombak", "Buona Vista", "Caldecott", "Changi Airport", "Chinese Garden", "Choa Chu Kang", "City Hall", "Clementi", "Commonwealth", "Dakota", "Dhoby Ghaut", "Dover", "Esplanade", "Eunos", "Expo", "Farrer Road", "Gul Circle", "HarbourFront", "Haw Par Villa", "Holland Village", "Joo Koon", "Jurong", "Kallang", "Kembangan", "Kent Ridge", "Khatib", "Kranji", "Labrador Park", "Lakeside", "Lavender", "Lorong Chuan", "MacPherson", "Marina Bay", "Marina South Pier", "Marsiling", "Marymount", "Mountbatten", "Newton", "Nicoll Highway", "Novena", "one-north", "Orchard", "Outram Park", "Pasir Panjang", "Pasir Ris", "Paya Lebar", "Pioneer", "Promenade", "Queenstown", "Raffles Place", "Redhill", "Sembawang", "Serangoon", "Simei", "Somerset", "Stadium", "Tai Seng", "Tampines", "Tanah Merah", "Tanjong Pagar", "Telok Blangah", "Tiong Bahru", "Toa Payoh", "Tuas Crescent", "Tuas Link", "Tuas West Road", "Woodlands", "Yew Tee", "Yio Chu Kang", "Yishun"]

lines = [
         "TNM|XPO|CGA",
         "JUR|BBT|BGB|CCK|YWT|KRJ|MSL|WDL|ADM|SBW|YIS|KTB|YCK|AMK|CBSH|BDL|TAP|NOV|NEW|ORC|SOM|CDBG|CTH|RFP|CMRB|MSP",
         "PSR|TAM|SIM|TNM|BDK|KEM|EUN|CPYL|ALJ|KAL|LVR|BGS|CTH|RFP|TPG|OTP|TIB|RDH|QUE|COM|CBNV|DVR|CLE|JUR|CNG|LKS|BNL|PNR|JKN|GCL|TCR|TWR|TLK",
         "CDBG|CBBS|CEPN|CPMN|CNCH|CSDM|CMBT|CDKT|CPYL|CMPS|CTSG|CBLY|CSER|CLRC|CBSH|CMRM|CCDT|CBTN|CFRR|CHLV|CBNV|CONH|CKRG|CHPV|CPPJ|CLBD|CTLB|CHBF",
         "CMRB|CBFT|CPMN"
         ]


def expand(statAbbrv):
    return statNames[stats.index(statAbbrv)]


def guessSpacings(data):
    spacings = {}
    for line in lines:
        linestats = line.split("|")
        for index in range(0, len(linestats)-1):
            forwardStations = [expand(stat) for stat in linestats[index+1:]]
            thisStation = linestats[index]
            thisStationData = [i[0] for i in data[thisStation] if i[1] in forwardStations]
            nextStation = linestats[index + 1]
            nextStationData = [i[0] for i in data[nextStation] if i[1] in forwardStations]

            possibilities = [i-j for i in thisStationData for j in nextStationData if i-j > 0]
            spacings[(thisStation, nextStation)] = possibilities

        for index in range(1, len(linestats)):
            forwardStations = [expand(stat) for stat in linestats[:index]]
            thisStation = linestats[index]
            thisStationData = [i[0] for i in data[thisStation] if i[1] in forwardStations]
            nextStation = linestats[index - 1]
            nextStationData = [i[0] for i in data[nextStation] if i[1] in forwardStations]

            possibilities = [i-j for i in thisStationData for j in nextStationData if i-j > 0]
            spacings[(nextStation, thisStation)] += possibilities

    return spacings
    # for entry in spacings:
    #     print('{} to {}: {}'.format(expand(entry[0]), expand(entry[1]), spacings[entry]))


def updateLoop():
    dats = {}
    print(str(datetime.datetime.now().time()))

    for stat in stats:
        print(stat)
        data = parse(ping(stat))
        dats[stat] = data

    print(dats)
    return dats


def updateSpacings(data):
    spacings = {}

    spacfile = open('spacings.txt', 'r')
    for line in spacfile:
        raw = line.split('-')
        spacings[(raw[0], raw[1])] = ast.literal_eval(raw[2])
    spacfile.close()

    newspacings = guessSpacings(data)
    for entry in spacings:
        spacings[entry] += newspacings[entry]

    spacfile = open('spacings.txt', 'w')
    for entry in spacings:
        spacfile.write('{}-{}-{}\n'.format(entry[0], entry[1], spacings[entry]))
    spacfile.close()


def readTestData():
    datfile = open('testdata.txt', 'r')
    currStat = ""
    data = {}
    for line in datfile:
        if re.match(r'\d+:\d+:\d+\.\d+', line) is None:
            if line == "######\n":
                updateSpacings(data)
                data = {}
            else:
                if currStat == "":
                    currStat = line.strip()
                else:
                    data[currStat] = ast.literal_eval(line)
                    currStat = ""

    datfile.close()



#readTestData()
dats = updateLoop()
updateSpacings(dats)
