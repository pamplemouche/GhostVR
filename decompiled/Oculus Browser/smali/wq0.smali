.class public abstract Lwq0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)LAq0;
    .locals 2

    .line 1
    invoke-static {p0}, Lwq0;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lwq0;->a(Landroid/net/wifi/WifiInfo;)LAq0;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lwq0;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "wifiInfo"

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiInfo;

    .line 7
    invoke-static {p0}, Lwq0;->a(Landroid/net/wifi/WifiInfo;)LAq0;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, LAq0;->e:LAq0;

    goto :goto_0

    .line 9
    :cond_2
    sget-object p0, LAq0;->e:LAq0;

    :goto_0
    if-eqz p0, :cond_3

    .line 10
    iget-object p1, p0, LAq0;->b:Ljava/lang/String;

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public static a(Landroid/net/wifi/WifiInfo;)LAq0;
    .locals 4

    if-nez p0, :cond_0

    .line 11
    sget-object p0, LAq0;->e:LAq0;

    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "<unknown ssid>"

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "\""

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v1

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 19
    new-instance v3, LAq0;

    invoke-direct {v3, v0, p0, v1, v2}, LAq0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-object v3
.end method

.method public static a(Landroid/content/Context;)LBq0;
    .locals 3

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 95
    invoke-static {p0, v0}, Lwq0;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)LAq0;

    move-result-object v0

    .line 96
    invoke-static {p0, v1}, Lwq0;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lzq0;

    move-result-object p0

    .line 97
    new-instance v1, LBq0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2, v2}, LBq0;-><init>(LAq0;Lzq0;Ljava/util/Set;Ljava/util/Set;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lzq0;
    .locals 6

    .line 20
    invoke-static {p0}, Lwq0;->c(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 21
    sget-object p0, Lzq0;->k:Lzq0;

    goto :goto_3

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_4

    .line 24
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 25
    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    if-le v3, v1, :cond_2

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, v4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 26
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 28
    invoke-static {v2, p0, p1, v3, v4}, Lwq0;->a(Landroid/telephony/CellInfo;JJ)Lzq0;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_6

    .line 29
    iget p1, p0, Lzq0;->a:I

    if-eqz p1, :cond_5

    if-ne p1, v1, :cond_6

    :cond_5
    return-object v0

    :cond_6
    return-object p0
.end method

.method public static a(Landroid/telephony/CellInfo;JJ)Lzq0;
    .locals 3

    if-nez p0, :cond_0

    .line 30
    sget-object p0, Lzq0;->j:Lzq0;

    return-object p0

    .line 31
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    sub-long/2addr p3, p1

    .line 32
    instance-of p1, p0, Landroid/telephony/CellInfoCdma;

    if-eqz p1, :cond_1

    .line 33
    check-cast p0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    const/4 p1, 0x2

    .line 34
    invoke-static {p1}, Lzq0;->a(I)Lyq0;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 36
    iput-object p2, p1, Lyq0;->b:Ljava/lang/Integer;

    .line 37
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 38
    iput-object p2, p1, Lyq0;->c:Ljava/lang/Integer;

    .line 39
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 40
    iput-object p0, p1, Lyq0;->e:Ljava/lang/Integer;

    .line 41
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 42
    iput-object p0, p1, Lyq0;->i:Ljava/lang/Long;

    .line 43
    invoke-virtual {p1}, Lyq0;->a()Lzq0;

    move-result-object p0

    return-object p0

    .line 44
    :cond_1
    instance-of p1, p0, Landroid/telephony/CellInfoGsm;

    if-eqz p1, :cond_2

    .line 45
    check-cast p0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    const/4 p1, 0x3

    .line 46
    invoke-static {p1}, Lzq0;->a(I)Lyq0;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 48
    iput-object p2, p1, Lyq0;->b:Ljava/lang/Integer;

    .line 49
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 50
    iput-object p2, p1, Lyq0;->c:Ljava/lang/Integer;

    .line 51
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 52
    iput-object p2, p1, Lyq0;->d:Ljava/lang/Integer;

    .line 53
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 54
    iput-object p0, p1, Lyq0;->e:Ljava/lang/Integer;

    .line 55
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 56
    iput-object p0, p1, Lyq0;->i:Ljava/lang/Long;

    .line 57
    invoke-virtual {p1}, Lyq0;->a()Lzq0;

    move-result-object p0

    return-object p0

    .line 58
    :cond_2
    instance-of p1, p0, Landroid/telephony/CellInfoLte;

    if-eqz p1, :cond_3

    .line 59
    check-cast p0, Landroid/telephony/CellInfoLte;

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    const/4 p1, 0x4

    .line 60
    invoke-static {p1}, Lzq0;->a(I)Lyq0;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 62
    iput-object p2, p1, Lyq0;->b:Ljava/lang/Integer;

    .line 63
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 64
    iput-object p2, p1, Lyq0;->d:Ljava/lang/Integer;

    .line 65
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 66
    iput-object p2, p1, Lyq0;->e:Ljava/lang/Integer;

    .line 67
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 68
    iput-object p2, p1, Lyq0;->g:Ljava/lang/Integer;

    .line 69
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 70
    iput-object p0, p1, Lyq0;->h:Ljava/lang/Integer;

    .line 71
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 72
    iput-object p0, p1, Lyq0;->i:Ljava/lang/Long;

    .line 73
    invoke-virtual {p1}, Lyq0;->a()Lzq0;

    move-result-object p0

    return-object p0

    .line 74
    :cond_3
    instance-of p1, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz p1, :cond_4

    .line 75
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    const/4 p1, 0x5

    .line 76
    invoke-static {p1}, Lzq0;->a(I)Lyq0;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 78
    iput-object p2, p1, Lyq0;->b:Ljava/lang/Integer;

    .line 79
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 80
    iput-object p2, p1, Lyq0;->c:Ljava/lang/Integer;

    .line 81
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 82
    iput-object p2, p1, Lyq0;->d:Ljava/lang/Integer;

    .line 83
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 84
    iput-object p2, p1, Lyq0;->e:Ljava/lang/Integer;

    .line 85
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 86
    iput-object p0, p1, Lyq0;->f:Ljava/lang/Integer;

    .line 87
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 88
    iput-object p0, p1, Lyq0;->i:Ljava/lang/Long;

    .line 89
    invoke-virtual {p1}, Lyq0;->a()Lzq0;

    move-result-object p0

    return-object p0

    .line 90
    :cond_4
    sget-object p0, Lzq0;->j:Lzq0;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/chromium/base/Callback;)V
    .locals 16

    move-object/from16 v0, p0

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 102
    invoke-static {v0, v1}, Lwq0;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)LAq0;

    move-result-object v3

    .line 103
    invoke-static {v0, v2}, Lwq0;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lzq0;

    move-result-object v4

    .line 104
    invoke-static/range {p0 .. p0}, Lwq0;->b(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_3

    .line 106
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 107
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 108
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    .line 110
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 111
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 112
    iget-object v12, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v12, :cond_2

    goto :goto_1

    .line 113
    :cond_2
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    sub-long v13, v6, v13

    sub-long v13, v8, v13

    .line 114
    iget-object v15, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget v11, v11, Landroid/net/wifi/ScanResult;->level:I

    .line 115
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 116
    new-instance v14, LAq0;

    invoke-direct {v14, v15, v12, v11, v13}, LAq0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 117
    invoke-virtual {v5, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    move-object v1, v5

    .line 118
    :goto_3
    new-instance v5, Luq0;

    move-object/from16 v6, p1

    invoke-direct {v5, v6, v3, v4, v1}, Luq0;-><init>(Lorg/chromium/base/Callback;LAq0;Lzq0;Ljava/util/Set;)V

    .line 119
    invoke-static/range {p0 .. p0}, Lwq0;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_4

    .line 121
    :cond_4
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 122
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, Lvq0;

    invoke-direct {v2, v5, v0}, Lvq0;-><init>(Lorg/chromium/base/Callback;Ljava/util/List;)V

    const-wide/16 v3, 0x0

    .line 123
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :goto_4
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 124
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 125
    invoke-static {p0, p1, v0, v1}, LdT;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lwq0;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 2
    invoke-static {p0, v0}, Lwq0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, v1}, Lwq0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3
    invoke-static {p0, v0}, Lwq0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {p0, v1}, Lwq0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
