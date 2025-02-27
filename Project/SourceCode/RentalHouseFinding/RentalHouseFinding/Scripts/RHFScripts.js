﻿//HungCQ
$(document).ready(function () {
    //For page postback
    var idPro = $("#ProvinceId option:selected").val();
    var idDis = $("#DistrictId option:selected").val();
    var select = $("#DistrictId");
    select.empty();
    select.append($('<option/>', {
        value: '0',
        text: 'Quận/Huyện'
    }));

    select.removeClass("chzn-done");
    if (idPro != 0) {
        $.getJSON("service/GetDistrictList", { id: idPro },
            function (myData) {
                $.each(myData, function (index, itemData) {
                    if (itemData.Text.length != 0 && itemData.Value != idDis) {
                        select.append($('<option/>', {
                            value: itemData.Value,
                            text: itemData.Text
                        }));
                    }
                    if (itemData.Text.length != 0 && itemData.Value == idDis) {
                        select.append($('<option/>', {
                            value: itemData.Value,
                            text: itemData.Text,
                            selected: 'selected'
                        }));
                    }
                });
                if (select.next().hasClass("chzn-container")) {
                    select.next().remove();
                }
                $(".chzn-select").chosen();
            });

    };
    $("#ProvinceId").change(function () {
        var idPro = $("#ProvinceId option:selected").val();
        var select = $("#DistrictId");
        select.empty();
        select.append($('<option/>', {
            value: '0',
            text: 'Quận/Huyện'
        }));
        select.removeClass("chzn-done");
        $.getJSON("service/GetDistrictList", { id: idPro },
        function (myData) {
            $.each(myData, function (index, itemData) {
                if (itemData.Text.length != 0) {
                    select.append($('<option/>', {
                        value: itemData.Value,
                        text: itemData.Text
                    }));
                }
            });

            if (select.next().hasClass("chzn-container")) {
                select.next().remove();
            }
            $(".chzn-select").chosen();
        });

    });

    $("#KeyWord").autocomplete({
        source: function (request, response) {
            if ($("#ProvinceId option:selected").val() == 0) {
                alert("Vui lòng chọn tỉnh thành phố");
                return false;
            }
            $.ajax({
                url: "service/GetFullTextSuggestion", type: "GET", dataType: "json",
                data: { categoryId: $("#CategoryId option:selected").val(), provinceId: $("#ProvinceId option:selected").val(), districtId: $("#DistrictId option:selected").val(), keyWord: request.term, skip: 0, take: 10 },
                success: function (data) {
                    response($.map(data, function (item) {
                        return { value: item.Text, id: item.Value };
                    }));
                }
            });
        },
        select: function (event, ui) {
            $("#PostIdSuggest").val(ui.item.id);
            $("#KeyWord").val(ui.item.label);
            return false;
        }
    });
});