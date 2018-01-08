(function ($) {
    var nowaday = new Date();
    nowaday = new Date(nowaday.getFullYear(), nowaday.getMonth(), nowaday.getDate());
    var startDate, endDate;
    if (bagStartDate != '' && bagEndDate != '') {
        var a = bagStartDate.split('-');
        var b = bagEndDate.split('-');
        startDate = new Date(parseInt(a[0], 10), parseInt(a[1], 10) - 1, parseInt(a[2], 10)).getTime();
        endDate = new Date(parseInt(b[0], 10), parseInt(b[1], 10) - 1, parseInt(b[2], 10)).getTime();
    } else {
        startDate = nowaday.getTime();
        endDate = new Date(nowaday.getFullYear(), nowaday.getMonth(), nowaday.getDate() + 1).getTime();
    }

    var getCalendar = function (year, month) {
        var theDate = new Date(year, month, 1);
        var startweekday = theDate.getDay();         // 这个月1号是星期几
        var monthday = (new Date(theDate.getFullYear(), theDate.getMonth() + 1, 1) - theDate) / (1000 * 60 * 60 * 24);  // 这个月有多少天
        var endweekday = new Date(year, month, monthday).getDay();      // 这个月最后一天是星期几
        var weeks = (startweekday + monthday + 6 - endweekday) / 7;     // 这个月有几周
        var addeddate = new Date(theDate.getTime() - startweekday * 24 * 60 * 60 * 1000);   // 日历第一天
        var m = [];
        for (var i = 0; i < weeks; i++) {
            m[i] = [];
            for (var j = 0; j < 7; j++) {
                m[i][j] = {
                    a: (addeddate - nowaday) < 0 || addeddate.getMonth() != theDate.getMonth() ? 0 : 1,
                    b: addeddate.getDate(),
                    c: addeddate.getTime()
                };
                addeddate = new Date(addeddate.getFullYear(), addeddate.getMonth(), addeddate.getDate() + 1);
            }
        }
        return m;
    }
    var createTable = function (year, month) {
        var dates = getCalendar(year, month);
        month = month + 1;
        var table = '<table class="vrdi" data-date="' + year + '-' + month + '">';
        table += '<caption>' + year + '年' + month + '月</caption>';
        table += '<thead><tr><th>周日</th><th>周一</th><th>周二</th><th>周三</th><th>周四</th><th>周五</th><th>周六</th></tr></thead>';
        table += '<tbody>';
        for (var i = 0; i < dates.length; i++) {
            table += '<tr>';
            for (var j = 0; j < dates[i].length; j++) {
                table += '<td' + (dates[i][j].a != 0 ? (' class="vrdj' + (dates[i][j].c == startDate || dates[i][j].c == endDate ? ' vrdl' : '') + (dates[i][j].c > startDate && dates[i][j].c < endDate ?' vrdm':'') + '"') : '') + ' data-date="' + dates[i][j].c + '">';
                if (dates[i][j].a != 0 && (dates[i][j].c == startDate || dates[i][j].c == endDate)) {
                    table += '<span>'+dates[i][j].b+'</span><b>'+(dates[i][j].c==startDate?'入住':'离开')+'</b>';
                } else {
                    table += dates[i][j].b;
                }
                table += '</td>';
            }
            table += '</tr>';
        }
        table += '</tbody>';
        table += '</table>';
        return table;
    };
    // 根据日期得到指定格式字符串：yyyy-MM-dd
    var getDateString = function(d){
        var year, month, day;
        year = d.getFullYear();
        month = d.getMonth() + 1;
        if (month < 10) {
            month = '0' + month;
        }
        day = d.getDate();
        if (day < 10) {
            day = '0' + day;
        }
        return '' + year + '-' + month + '-' + day;
    };
    var hightlightd = function (td, s, e) {
        var n;
        while (td.next().length != 0) {
            td = td.next();
            n = parseInt(td.data('date'), 10);
            if (n <= s || n >= e) {
                return;
            }
            if (td.hasClass('vrdj')) {
                td.addClass('vrdm');
            }
        }
        while (td.parent().next().length != 0) {
            td = td.parent().next().children().eq(0);
            n = parseInt(td.data('date'), 10);
            if (n <= s || n >= e) {
                return;
            }
            if (td.hasClass('vrdj')) {
                td.addClass('vrdm');
            }
            while (td.next().length != 0) {
                td = td.next();
                n = parseInt(td.data('date'), 10);
                if (n <= s || n >= e) {
                    return;
                }
                if (td.hasClass('vrdj')) {
                    td.addClass('vrdm');
                }
            }
        }
        return td;
    };
    $(function () {
        var calendar;
        var vrfo = $('.selectcon').find('.vrfo').last();
        vrfo.siblings().click(function () {
            if (calendar != void 0) {
                calendar.hide();
            }
        });
        vrfo.click(function () {
            if (calendar != void 0) {
                if (vrfo.find('.arw').is(':visible')) {
                    calendar.show();
                } else {
                    calendar.hide();
                }
                return;
            }
            var tdate = nowaday;
            var htmls = '<div class="vrda">';
            htmls += '<div class="vrdb"></div>';
            htmls += '<div class="vrdc">';
            htmls += '<div class="vrdd">';
            htmls += '<div class="vrdh">';
            htmls += '<div>';
            htmls += createTable(tdate.getFullYear(), tdate.getMonth());
            tdate = new Date(tdate.getFullYear(), tdate.getMonth() + 1);
            htmls += createTable(tdate.getFullYear(), tdate.getMonth());
            tdate = new Date(tdate.getFullYear(), tdate.getMonth() + 1);
            htmls += createTable(tdate.getFullYear(), tdate.getMonth());
            htmls += '</div>';
            htmls += '</div>';
            htmls += '</div>';
            htmls += '<div class="vrde">';
            htmls += '<div class="vrdf">';
            htmls += '<input class="vrdk" type="text" value="" readonly>';
            htmls += '<span>-</span>';
            htmls += '<input type="text" value="" readonly>';
            htmls += '</div>';
            htmls += '<div class="vrdg">';
            htmls += '<a>确定</a>';
            htmls += '<b>取消</b>';
            htmls += '</div>';
            htmls += '</div>';
            htmls += '</div>';
            htmls += '</div>';
            htmls += '';
            calendar = $(htmls);
            var vrdf = calendar.find('.vrdf input');
            var vrdg = calendar.find('.vrdg');
            var vrdh = calendar.find('.vrdh'), vrdhd = vrdh.children();
            var isredirect = false;
            vrdh.scroll(function (e) {
                if (700 + vrdh.scrollTop() >= vrdhd.height()) {
                    tdate = new Date(tdate.getFullYear(), tdate.getMonth() + 1);
                    vrdhd.append(createTable(tdate.getFullYear(), tdate.getMonth()));
                }
            });
            var selection = function () {
                // 开始日期和结束日期之间的日期高亮
                var n, fortd = hightlightd(vrdh.find('.vrdl').eq(0), startDate, endDate);
                // 当前表的高亮
                while (fortd != void 0 && fortd.length != 0 && fortd.parents('.vrdi').next().length != 0) {
                    fortd = fortd.parents('.vrdi').next().find('tbody tr').eq(0).children().eq(0);
                    n = parseInt(fortd.data('date'), 10);
                    if (n <= startDate || n >= endDate) {
                        return;
                    }
                    if (fortd.hasClass('vrdj')) {
                        fortd.addClass('vrdm');
                    }
                    fortd = hightlightd(fortd, startDate, endDate);
                }
            };
            vrdh.on('click', '.vrdj', function () {
                var isEnd = vrdf.eq(1).hasClass('vrdk'), value = parseInt($(this).text(), 10),
                    theDate = parseInt($(this).data('date'), 10);
                if (theDate == void 0) {
                    theDate = tdate;
                }
                if (isEnd && $(this).hasClass('vrdl')) {
                    return;
                }
                vrdh.find('.vrdm').removeClass('vrdm');
                if (isEnd) {        // 准备选择离开日期
                    endDate = theDate;
                    if (startDate == void 0) {
                        startDate = new Date(theDate.getFullYear(), theDate.getMonth(), theDate.getDate() - 1);
                    }
                    var isSwap = (endDate - startDate) < 0;
                    if (isSwap) {    // 如果选择离开日期小于入住日期，两个日期调换
                        endDate = startDate;
                        startDate = theDate;
                        vrdh.find('.vrdl b').text('离开');
                    }
                    $(this).addClass('vrdl').html('<span>' + value + '</span><b>' + (isSwap ? '入住' : '离开') + '</b>');
                    vrdf.eq(0).addClass('vrdk').val(getDateString(new Date(startDate)));
                    vrdf.eq(1).removeClass('vrdk').val(getDateString(new Date(endDate)));
                    selection();
                    vrdg.find('a').click();
                } else {            // 准备选择入住日期
                    vrdh.find('.vrdl').each(function () {
                        var value = $(this).find('span').text();
                        $(this).html(value).removeClass('vrdl');
                    });
                    $(this).addClass('vrdl').html('<span>' + value + '</span><b>入住</b>');
                    startDate = theDate;
                    vrdf.eq(0).removeClass('vrdk').val(getDateString(new Date(startDate)));
                    vrdf.eq(1).addClass('vrdk');
                }
            });
            vrdg.find('a').click(function () {  // 确认
                if (vrdf.eq(1).hasClass('vrdk') || isredirect) {
                    return;
                }
                //户型
                var houseroom = $("#ulRooms li[class='active']").data('houseroom');
                //面积
                var area = $("#ulArea li[class='active']").data('housearea');
                //区域
                var city = $("#ulCity li[class='active']").data('city');
                //特色
                var spec = $("#ulSpec li[class='active']").data('keyword');
                //价格区间 暂改为日价
                var jiage = $("#ulJiage1 li[class='active']").data('price');
                //开始日期
                var startdate = vrdf.eq(0).val();
                //结束日期
                var enddate = vrdf.eq(1).val();
                isredirect = true;
                window.location.href = "/vac/rooms/a" + area + "_c" + city + "_r" + houseroom + "_s" + spec + "_j" + jiage + "_sd" + startdate + "_ed" + enddate + ($('#isbuycard').val()=='1'?'?o1=1':'');
            }).next().click(function () {
                calendar.hide();
                calendar.prev('.opacity').hide();
                vrfo.find('.arw').hide();
            });
            vrdf.eq(0).val(getDateString(new Date(startDate)));
            vrdf.eq(1).val(getDateString(new Date(endDate)));
            $(document.body).append(calendar);
        });
    });
})(window.jQuery);
