#api교체 대비용 더미데이터입니다
INSERT INTO CardHistory(cardNum, historyNum, historyContent) VALUES('1111-1111-1111-1111', 0,
json_object(
         'dataHeader',  json_object(
                                    'udid', 'a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1',
                                    'subChannel', 'channel1',
			'deviceModel', 'CBR-3000', 
			'deviceOs', 'os',
			'carrier', 'DCR-1021',
			'connectionType', 'connected',
			'appName', 'pay',
			'appVersion', '1.1.2', 
			'scrNo', 'CXOXXHHC0021',
			'scrName', 'cardHistoryRetrieve'), 
	'dataBody', json_object(
			'startDate', '20170101',
			'endDate', '20220331', 
			'whoInquryAbilYn', '1', 
			'NextKeyH', '2017071130017632')));

#도커에선 아래껄로 입력해야 제대로 됐음
INSERT INTO CardHistory(cardNum, historyNum, historyContent) VALUES('1111-1111-1111-1111', 0, json_object('dataHeader',  json_object('udid', 'a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1', 'subChannel', 'channel1', 'deviceModel', 'CBR-3000', 'deviceOs', 'os', 'carrier', 'DCR-1021', 'connectionType', 'connected', 'appName', 'pay', 'appVersion', '1.1.2', 'scrNo', 'CXOXXHHC0021', 'scrName', 'cardHistoryRetrieve'), 'dataBody', json_object('startDate', '20170101','endDate', '20220331', 'whoInquryAbilYn', '1', 'NextKeyH', '2017071130017632')));