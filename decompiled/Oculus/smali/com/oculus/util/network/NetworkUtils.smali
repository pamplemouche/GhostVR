.class public Lcom/oculus/util/network/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 26
    const-string v0, "connectivity"

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 28
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionSpeed(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    invoke-static {p0}, Lcom/oculus/util/network/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 69
    const-string/jumbo v0, "unknown"

    .line 120
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 73
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 74
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 75
    const-string v0, "fast"

    goto :goto_0

    .line 78
    :cond_1
    if-nez v1, :cond_2

    .line 79
    packed-switch v0, :pswitch_data_0

    .line 116
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 81
    :pswitch_0
    const-string/jumbo v0, "slow"

    goto :goto_0

    .line 83
    :pswitch_1
    const-string/jumbo v0, "slow"

    goto :goto_0

    .line 85
    :pswitch_2
    const-string/jumbo v0, "slow"

    goto :goto_0

    .line 87
    :pswitch_3
    const-string v0, "fast"

    goto :goto_0

    .line 89
    :pswitch_4
    const-string v0, "fast"

    goto :goto_0

    .line 91
    :pswitch_5
    const-string/jumbo v0, "slow"

    goto :goto_0

    .line 93
    :pswitch_6
    const-string v0, "fast"

    goto :goto_0

    .line 95
    :pswitch_7
    const-string v0, "fast"

    goto :goto_0

    .line 97
    :pswitch_8
    const-string v0, "fast"

    goto :goto_0

    .line 99
    :pswitch_9
    const-string v0, "fast"

    goto :goto_0

    .line 104
    :pswitch_a
    const-string v0, "fast"

    goto :goto_0

    .line 106
    :pswitch_b
    const-string v0, "fast"

    goto :goto_0

    .line 108
    :pswitch_c
    const-string v0, "fast"

    goto :goto_0

    .line 110
    :pswitch_d
    const-string/jumbo v0, "slow"

    goto :goto_0

    .line 112
    :pswitch_e
    const-string v0, "fast"

    goto :goto_0

    .line 120
    :cond_2
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    invoke-static {p0}, Lcom/oculus/util/network/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    :cond_0
    const-string v0, "connection_disconnected"

    .line 55
    :goto_0
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 48
    const-string/jumbo v0, "wifi"

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 52
    invoke-static {p0}, Lcom/oculus/util/network/NetworkUtils;->getNetworkClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_3
    const-string v0, "connection_unknown"

    goto :goto_0
.end method

.method private static getNetworkClass(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "phone"

    .line 138
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 139
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 140
    packed-switch v0, :pswitch_data_0

    .line 160
    const-string v0, "network_unknown"

    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    const-string v0, "network_2g"

    goto :goto_0

    .line 156
    :pswitch_1
    const-string v0, "network_3g"

    goto :goto_0

    .line 158
    :pswitch_2
    const-string v0, "network_4g"

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/oculus/util/network/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/util/network/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoamingConnection(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-static {p0}, Lcom/oculus/util/network/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 125
    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
