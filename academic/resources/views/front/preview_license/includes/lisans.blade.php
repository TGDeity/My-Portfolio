<div>
    <h6 style="margin-top: 89px;">1.Yarıyıl</h6>
    <div class="table-responsive" style="border-top-style: outset;">

        {{-- table1 --}}
        <table class="table table-hover table-borderless">
            <caption>Aşağıdaki derslerden birisi plana eklenir.<br>YDI1001&nbsp; Yabancı Dil
                I(İngilizce)<br>YDD1001 Yabancı Dil I(Almanca)<br>YDF1001 Yabancı Dil
                I(Fransızca)<br>SAD/SA/8 En az kredi</caption>
            <thead>
                <tr>
                    <th>Ders Kodu</th>
                    <th>Ders Adı</th>
                    <th>Ders Türü</th>
                    <th>T/U/L</th>
                    <th>AKTS</th>
                </tr>
            </thead>
            <tbody>

                @foreach ($getProgramDetails as $val)
                    @foreach ($val as $newVal)
                        @if ($newVal->year == '1/8')
                            <tr>
                                <td>{{ $newVal->lesson_id }}</td>
                                <td class="text-truncate">{{ $newVal->lesson_name }}</td>
                                <td>{{ $newVal->lesson_type }}</td>
                                <td>{{ $newVal->TUL }}</td>
                                <td>{{ $newVal->AKTS }}</td>
                            </tr>
                        @endif
                    @endforeach
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td>AKTS Kredi Toplamı</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>@php
                        $akts_year1_4 = [];
                        $sum = 0;
                    @endphp
                        @foreach ($getProgramDetails as $val)
                            @foreach ($val as $newVal)
                                @if ($newVal->year == '1/8')
                                    @php
                                        array_push($akts_year1_4, intval($newVal->AKTS));
                                    @endphp
                                @endif
                            @endforeach
                        @endforeach
                        @foreach ($akts_year1_4 as $akts)
                            @php
                                $sum += $akts;
                            @endphp
                        @endforeach
                        {{ $sum }}
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>
{{-- table2 --}}
<div>
    <h6 style="margin-top: 89px;">2.Yarıyıl</h6>
    <div class="table-responsive" style="border-top-style: outset;">
        <table class="table table-hover table-borderless">
            <caption>Aşağıdaki derslerden birisi plana eklenir.<br>YDI1001&nbsp; Yabancı Dil
                I(İngilizce)<br>YDD1001 Yabancı Dil I(Almanca)<br>YDF1001 Yabancı Dil
                I(Fransızca)<br>SAD/SA/8 En az kredi</caption>
            <thead>
                <tr>
                    <th>Ders Kodu</th>
                    <th>Ders Adı</th>
                    <th>Ders Türü</th>
                    <th>T/U/L</th>
                    <th>AKTS</th>
                </tr>
            </thead>
            <tbody>

                @foreach ($getProgramDetails as $val)
                    @foreach ($val as $newVal)
                        @if ($newVal->year == '2/8')
                            <tr>
                                <td>{{ $newVal->lesson_id }}</td>
                                <td class="text-truncate">{{ $newVal->lesson_name }}</td>
                                <td>{{ $newVal->lesson_type }}</td>
                                <td>{{ $newVal->TUL }}</td>
                                <td>{{ $newVal->AKTS }}</td>
                            </tr>
                        @endif
                    @endforeach
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td>AKTS Kredi Toplamı</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>@php
                        $akts_year1_4 = [];
                        $sum = 0;
                    @endphp
                        @foreach ($getProgramDetails as $val)
                            @foreach ($val as $newVal)
                                @if ($newVal->year == '2/8')
                                    @php
                                        array_push($akts_year1_4, intval($newVal->AKTS));
                                    @endphp
                                @endif
                            @endforeach
                        @endforeach
                        @foreach ($akts_year1_4 as $akts)
                            @php
                                $sum += $akts;
                            @endphp
                        @endforeach
                        {{ $sum }}
                    </td>
                </tr>
            </tfoot>
        </table>

    </div>
</div>
<div>
    <h6 style="margin-top: 89px;">3.Yarıyıl</h6>
    <div class="table-responsive" style="border-top-style: outset;">
        <table class="table table-hover table-borderless">
            <thead>
                <tr>
                    <th>Ders Kodu</th>
                    <th>Ders Adı</th>
                    <th>Ders Türü</th>
                    <th>T/U/L</th>
                    <th>AKTS</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($getProgramDetails as $val)
                    @foreach ($val as $newVal)
                        @if ($newVal->year == '3/8')
                            <tr>
                                <td>{{ $newVal->lesson_id }}</td>
                                <td class="text-truncate">{{ $newVal->lesson_name }}</td>
                                <td>{{ $newVal->lesson_type }}</td>
                                <td>{{ $newVal->TUL }}</td>
                                <td>{{ $newVal->AKTS }}</td>
                            </tr>
                        @endif
                    @endforeach
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td>AKTS Kredi Toplamı</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>@php
                        $akts_year1_4 = [];
                        $sum = 0;
                    @endphp
                        @foreach ($getProgramDetails as $val)
                            @foreach ($val as $newVal)
                                @if ($newVal->year == '3/8')
                                    @php
                                        array_push($akts_year1_4, intval($newVal->AKTS));
                                    @endphp
                                @endif
                            @endforeach
                        @endforeach
                        @foreach ($akts_year1_4 as $akts)
                            @php
                                $sum += $akts;
                            @endphp
                        @endforeach
                        {{ $sum }}
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>

<div>
    <h6 style="margin-top: 89px;">4.Yarıyıl</h6>
    <div class="table-responsive" style="border-top-style: outset;">
        <table class="table table-hover table-borderless">
            <thead>
                <tr>
                    <th>Ders Kodu</th>
                    <th>Ders Adı</th>
                    <th>Ders Türü</th>
                    <th>T/U/L</th>
                    <th>AKTS</th>
                </tr>
            </thead>
            <tbody>

                @foreach ($getProgramDetails as $val)
                    @foreach ($val as $newVal)
                        @if ($newVal->year == '4/8')
                            <tr>
                                <td>{{ $newVal->lesson_id }}</td>
                                <td class="text-truncate">{{ $newVal->lesson_name }}</td>
                                <td>{{ $newVal->lesson_type }}</td>
                                <td>{{ $newVal->TUL }}</td>
                                <td>{{ $newVal->AKTS }}</td>
                            </tr>
                        @endif
                    @endforeach
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td>AKTS Kredi Toplamı</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>@php
                        $akts_year1_4 = [];
                        $sum = 0;
                    @endphp
                        @foreach ($getProgramDetails as $val)
                            @foreach ($val as $newVal)
                                @if ($newVal->year == '4/8')
                                    @php
                                        array_push($akts_year1_4, intval($newVal->AKTS));
                                    @endphp
                                @endif
                            @endforeach
                        @endforeach
                        @foreach ($akts_year1_4 as $akts)
                            @php
                                $sum += $akts;
                            @endphp
                        @endforeach
                        {{ $sum }}
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>


<div>
    <h6 style="margin-top: 89px;">5.Yarıyıl</h6>
    <div class="table-responsive" style="border-top-style: outset;">
        <table class="table table-hover table-borderless">
            <thead>
                <tr>
                    <th>Ders Kodu</th>
                    <th>Ders Adı</th>
                    <th>Ders Türü</th>
                    <th>T/U/L</th>
                    <th>AKTS</th>
                </tr>
            </thead>
            <tbody>

                @foreach ($getProgramDetails as $val)
                    @foreach ($val as $newVal)
                        @if ($newVal->year == '5/8')
                            <tr>
                                <td>{{ $newVal->lesson_id }}</td>
                                <td class="text-truncate">{{ $newVal->lesson_name }}</td>
                                <td>{{ $newVal->lesson_type }}</td>
                                <td>{{ $newVal->TUL }}</td>
                                <td>{{ $newVal->AKTS }}</td>
                            </tr>
                        @endif
                    @endforeach
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td>AKTS Kredi Toplamı</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>@php
                        $akts_year1_4 = [];
                        $sum = 0;
                    @endphp
                        @foreach ($getProgramDetails as $val)
                            @foreach ($val as $newVal)
                                @if ($newVal->year == '5/8')
                                    @php
                                        array_push($akts_year1_4, intval($newVal->AKTS));
                                    @endphp
                                @endif
                            @endforeach
                        @endforeach
                        @foreach ($akts_year1_4 as $akts)
                            @php
                                $sum += $akts;
                            @endphp
                        @endforeach
                        {{ $sum }}
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>


<div>
    <h6 style="margin-top: 89px;">6.Yarıyıl</h6>
    <div class="table-responsive" style="border-top-style: outset;">
        <table class="table table-hover table-borderless">
            <thead>
                <tr>
                    <th>Ders Kodu</th>
                    <th>Ders Adı</th>
                    <th>Ders Türü</th>
                    <th>T/U/L</th>
                    <th>AKTS</th>
                </tr>
            </thead>
            <tbody>

                @foreach ($getProgramDetails as $val)
                    @foreach ($val as $newVal)
                        @if ($newVal->year == '6/8')
                            <tr>
                                <td>{{ $newVal->lesson_id }}</td>
                                <td class="text-truncate">{{ $newVal->lesson_name }}</td>
                                <td>{{ $newVal->lesson_type }}</td>
                                <td>{{ $newVal->TUL }}</td>
                                <td>{{ $newVal->AKTS }}</td>
                            </tr>
                        @endif
                    @endforeach
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td>AKTS Kredi Toplamı</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>@php
                        $akts_year1_4 = [];
                        $sum = 0;
                    @endphp
                        @foreach ($getProgramDetails as $val)
                            @foreach ($val as $newVal)
                                @if ($newVal->year == '6/8')
                                    @php
                                        array_push($akts_year1_4, intval($newVal->AKTS));
                                    @endphp
                                @endif
                            @endforeach
                        @endforeach
                        @foreach ($akts_year1_4 as $akts)
                            @php
                                $sum += $akts;
                            @endphp
                        @endforeach
                        {{ $sum }}
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>


<div>
    <h6 style="margin-top: 89px;">7.Yarıyıl</h6>
    <div class="table-responsive" style="border-top-style: outset;">
        <table class="table table-hover table-borderless">
            <thead>
                <tr>
                    <th>Ders Kodu</th>
                    <th>Ders Adı</th>
                    <th>Ders Türü</th>
                    <th>T/U/L</th>
                    <th>AKTS</th>
                </tr>
            </thead>
            <tbody>

                @foreach ($getProgramDetails as $val)
                    @foreach ($val as $newVal)
                        @if ($newVal->year == '7/8')
                            <tr>
                                <td>{{ $newVal->lesson_id }}</td>
                                <td class="text-truncate">{{ $newVal->lesson_name }}</td>
                                <td>{{ $newVal->lesson_type }}</td>
                                <td>{{ $newVal->TUL }}</td>
                                <td>{{ $newVal->AKTS }}</td>
                            </tr>
                        @endif
                    @endforeach
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td>AKTS Kredi Toplamı</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>@php
                        $akts_year1_4 = [];
                        $sum = 0;
                    @endphp
                        @foreach ($getProgramDetails as $val)
                            @foreach ($val as $newVal)
                                @if ($newVal->year == '7/8')
                                    @php
                                        array_push($akts_year1_4, intval($newVal->AKTS));
                                    @endphp
                                @endif
                            @endforeach
                        @endforeach
                        @foreach ($akts_year1_4 as $akts)
                            @php
                                $sum += $akts;
                            @endphp
                        @endforeach
                        {{ $sum }}
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>


<div>
    <h6 style="margin-top: 89px;">8.Yarıyıl</h6>
    <div class="table-responsive" style="border-top-style: outset;">
        <table class="table table-hover table-borderless">
            <thead>
                <tr>
                    <th>Ders Kodu</th>
                    <th>Ders Adı</th>
                    <th>Ders Türü</th>
                    <th>T/U/L</th>
                    <th>AKTS</th>
                </tr>
            </thead>
            <tbody>

                @foreach ($getProgramDetails as $val)
                    @foreach ($val as $newVal)
                        @if ($newVal->year == '8/8')
                            <tr>
                                <td>{{ $newVal->lesson_id }}</td>
                                <td class="text-truncate">{{ $newVal->lesson_name }}</td>
                                <td>{{ $newVal->lesson_type }}</td>
                                <td>{{ $newVal->TUL }}</td>
                                <td>{{ $newVal->AKTS }}</td>
                            </tr>
                        @endif
                    @endforeach
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td>AKTS Kredi Toplamı</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>@php
                        $akts_year1_4 = [];
                        $sum = 0;
                    @endphp
                        @foreach ($getProgramDetails as $val)
                            @foreach ($val as $newVal)
                                @if ($newVal->year == '8/8')
                                    @php
                                        array_push($akts_year1_4, intval($newVal->AKTS));
                                    @endphp
                                @endif
                            @endforeach
                        @endforeach
                        @foreach ($akts_year1_4 as $akts)
                            @php
                                $sum += $akts;
                            @endphp
                        @endforeach
                        {{ $sum }}
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>
