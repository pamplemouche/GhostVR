.class public LA81;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final a:Landroid/os/Looper;

.field public final b:Landroid/os/Handler;

.field public final c:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

.field public final d:Lx81;

.field public final e:Ly81;

.field public f:Lp81;

.field public g:Lo81;

.field public h:Lz81;

.field public i:Lv81;

.field public j:Landroid/net/NetworkRequest;

.field public k:Z

.field public l:Lw81;

.field public m:Z

.field public n:Z

.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LA81;

    return-void
.end method

.method public constructor <init>(Lx81;Ly81;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, LA81;->a:Landroid/os/Looper;

    .line 3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LA81;->a:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LA81;->b:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, LA81;->d:Lx81;

    .line 5
    new-instance p1, Lo81;

    .line 6
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-direct {p1, v0}, Lo81;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LA81;->g:Lo81;

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    .line 9
    new-instance p1, Lz81;

    .line 10
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 11
    invoke-direct {p1, v0}, Lz81;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LA81;->h:Lz81;

    .line 12
    :cond_0
    new-instance p1, Lv81;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lv81;-><init>(LA81;Ln81;)V

    iput-object p1, p0, LA81;->i:Lv81;

    .line 13
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 14
    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 v1, 0xf

    .line 15
    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, LA81;->j:Landroid/net/NetworkRequest;

    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_1

    .line 18
    new-instance p1, Lp81;

    invoke-direct {p1, p0, v0}, Lp81;-><init>(LA81;Ln81;)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 19
    :goto_0
    iput-object p1, p0, LA81;->f:Lp81;

    .line 20
    invoke-virtual {p0}, LA81;->c()Lw81;

    move-result-object p1

    iput-object p1, p0, LA81;->l:Lw81;

    .line 21
    new-instance p1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    invoke-direct {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;-><init>()V

    iput-object p1, p0, LA81;->c:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, LA81;->m:Z

    .line 23
    iput-boolean p1, p0, LA81;->n:Z

    .line 24
    iput-object p2, p0, LA81;->e:Ly81;

    .line 25
    invoke-virtual {p2, p0}, Ly81;->a(LA81;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, LA81;->n:Z

    return-void
.end method

.method public static synthetic a(II)I
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v2, 0x6

    if-eq p0, v2, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    :cond_3
    :goto_1
    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/net/Network;)J
    .locals 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {p0}, LzU;->a(Landroid/net/Network;)J

    move-result-wide v0

    return-wide v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static a(Lo81;Landroid/net/Network;)[Landroid/net/Network;
    .locals 8

    .line 1
    iget-object v0, p0, Lo81;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/net/Network;

    .line 2
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v5, v0, v3

    .line 3
    invoke-virtual {v5, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v6, p0, Lo81;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    if-eqz v6, :cond_4

    const/16 v7, 0xc

    .line 5
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x4

    .line 6
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7
    invoke-virtual {p0, v5}, Lo81;->c(Landroid/net/Network;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/net/Network;

    aput-object v5, p0, v1

    return-object p0

    :cond_3
    add-int/lit8 v6, v4, 0x1

    .line 8
    aput-object v5, v0, v4

    move v4, v6

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/Network;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 13
    invoke-virtual {p0}, LA81;->c()Lw81;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lw81;->b()I

    move-result v1

    iget-object v2, p0, LA81;->l:Lw81;

    invoke-virtual {v2}, Lw81;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 15
    iget-object v1, v0, Lw81;->d:Ljava/lang/String;

    .line 16
    iget-object v2, p0, LA81;->l:Lw81;

    .line 17
    iget-object v2, v2, Lw81;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    iget-boolean v1, v0, Lw81;->e:Z

    .line 20
    iget-object v2, p0, LA81;->l:Lw81;

    .line 21
    iget-boolean v3, v2, Lw81;->e:Z

    if-ne v1, v3, :cond_0

    .line 22
    iget-object v1, v0, Lw81;->f:Ljava/lang/String;

    .line 23
    iget-object v2, v2, Lw81;->f:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    :cond_0
    iget-object v1, p0, LA81;->d:Lx81;

    invoke-virtual {v0}, Lw81;->b()I

    move-result v2

    invoke-interface {v1, v2}, Lx81;->a(I)V

    .line 26
    :cond_1
    invoke-virtual {v0}, Lw81;->b()I

    move-result v1

    iget-object v2, p0, LA81;->l:Lw81;

    invoke-virtual {v2}, Lw81;->b()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 27
    invoke-virtual {v0}, Lw81;->a()I

    move-result v1

    iget-object v2, p0, LA81;->l:Lw81;

    invoke-virtual {v2}, Lw81;->a()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 28
    :cond_2
    iget-object v1, p0, LA81;->d:Lx81;

    invoke-virtual {v0}, Lw81;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lx81;->b(I)V

    .line 29
    :cond_3
    iput-object v0, p0, LA81;->l:Lw81;

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 10
    iget-object v0, p0, LA81;->a:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, LA81;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, LA81;->e:Ly81;

    invoke-virtual {v0}, Ly81;->a()V

    .line 2
    invoke-virtual {p0}, LA81;->d()V

    return-void
.end method

.method public c()Lw81;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, LA81;->g:Lo81;

    iget-object v2, v0, LA81;->h:Lz81;

    .line 2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 3
    invoke-virtual {v1}, Lo81;->a()Landroid/net/Network;

    move-result-object v3

    .line 4
    iget-object v1, v1, Lo81;->a:Landroid/net/ConnectivityManager;

    invoke-static {v1, v3}, LzU;->a(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v1, Lo81;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    move-object v3, v5

    :goto_0
    const/4 v4, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v7, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v6

    if-eq v6, v4, :cond_4

    :goto_1
    move-object v1, v5

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 9
    new-instance v1, Lw81;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lw81;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    move-object v2, v1

    goto/16 :goto_3

    :cond_5
    if-eqz v3, :cond_7

    .line 10
    invoke-static {v3}, Lorg/chromium/net/AndroidNetworkLibrary;->getDnsStatus(Landroid/net/Network;)Lorg/chromium/net/DnsStatus;

    move-result-object v2

    if-nez v2, :cond_6

    .line 11
    new-instance v2, Lw81;

    const/4 v5, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 12
    invoke-static {v3}, LA81;->a(Landroid/net/Network;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lw81;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 13
    :cond_6
    new-instance v4, Lw81;

    const/4 v12, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v14

    .line 14
    invoke-static {v3}, LA81;->a(Landroid/net/Network;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 15
    invoke-virtual {v2}, Lorg/chromium/net/DnsStatus;->getPrivateDnsActive()Z

    move-result v16

    invoke-virtual {v2}, Lorg/chromium/net/DnsStatus;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v17

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lw81;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    move-object v2, v4

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v4, :cond_9

    .line 17
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 18
    new-instance v2, Lw81;

    const/4 v5, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 19
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lw81;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_3

    .line 20
    :cond_8
    new-instance v3, Lw81;

    const/4 v12, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v14

    .line 21
    invoke-virtual {v2}, Lz81;->a()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-string v17, ""

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lw81;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    move-object v2, v3

    goto :goto_3

    .line 22
    :cond_9
    new-instance v2, Lw81;

    const/4 v5, 0x1

    .line 23
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lw81;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    :goto_3
    return-object v2
.end method

.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, LA81;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LA81;->k:Z

    .line 3
    iget-object v0, p0, LA81;->i:Lv81;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, LA81;->g:Lo81;

    .line 5
    iget-object v1, v1, Lo81;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 6
    :cond_1
    iget-object v0, p0, LA81;->f:Lp81;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, LA81;->g:Lo81;

    .line 8
    iget-object v1, v1, Lo81;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    new-instance p1, Ln81;

    invoke-direct {p1, p0}, Ln81;-><init>(LA81;)V

    invoke-virtual {p0, p1}, LA81;->a(Ljava/lang/Runnable;)V

    return-void
.end method
