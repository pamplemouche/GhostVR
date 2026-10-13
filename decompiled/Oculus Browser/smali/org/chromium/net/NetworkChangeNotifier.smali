.class public Lorg/chromium/net/NetworkChangeNotifier;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static f:Lorg/chromium/net/NetworkChangeNotifier;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:LWT;

.field public final c:Landroid/net/ConnectivityManager;

.field public d:LA81;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->a:Ljava/util/ArrayList;

    .line 4
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:LWT;

    .line 5
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->c:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static a(Lm81;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 3
    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifier;->b:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Z)V
    .locals 3

    .line 4
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 5
    new-instance v1, LH81;

    invoke-direct {v1}, LH81;-><init>()V

    if-eqz p0, :cond_0

    .line 6
    iget-object p0, v0, Lorg/chromium/net/NetworkChangeNotifier;->d:LA81;

    if-nez p0, :cond_1

    .line 7
    new-instance p0, LA81;

    new-instance v2, Ll81;

    invoke-direct {v2, v0}, Ll81;-><init>(Lorg/chromium/net/NetworkChangeNotifier;)V

    invoke-direct {p0, v2, v1}, LA81;-><init>(Lx81;Ly81;)V

    iput-object p0, v0, Lorg/chromium/net/NetworkChangeNotifier;->d:LA81;

    .line 8
    invoke-virtual {p0}, LA81;->c()Lw81;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lw81;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/NetworkChangeNotifier;->b(I)V

    .line 10
    invoke-virtual {p0}, Lw81;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;->a(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, v0, Lorg/chromium/net/NetworkChangeNotifier;->d:LA81;

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, LA81;->b()V

    const/4 p0, 0x0

    .line 13
    iput-object p0, v0, Lorg/chromium/net/NetworkChangeNotifier;->d:LA81;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Lm81;)V
    .locals 1

    .line 3
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 4
    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifier;->b:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 2
    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifier;->getCurrentConnectionType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static fakeConnectionSubtypeChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 2
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 3
    invoke-virtual {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;->a(I)V

    return-void
.end method

.method public static fakeDefaultNetwork(JI)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 2
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 3
    invoke-virtual {v0, p2, p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->a(IJ)V

    return-void
.end method

.method public static fakeNetworkConnected(JI)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 2
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->a(JI)V

    return-void
.end method

.method public static fakeNetworkDisconnected(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 2
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 3
    invoke-virtual {v0, p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->a(J)V

    return-void
.end method

.method public static fakeNetworkSoonToBeDisconnected(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 2
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 3
    invoke-virtual {v0, p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->b(J)V

    return-void
.end method

.method public static fakePurgeActiveNetworkList([J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 2
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 3
    invoke-virtual {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;->a([J)V

    return-void
.end method

.method public static forceConnectivityState(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 2
    sget-object v1, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 3
    iget v2, v1, Lorg/chromium/net/NetworkChangeNotifier;->e:I

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eq v2, p0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    .line 4
    :goto_1
    invoke-virtual {v1, v0}, Lorg/chromium/net/NetworkChangeNotifier;->b(I)V

    xor-int/2addr p0, v4

    .line 5
    invoke-virtual {v1, p0}, Lorg/chromium/net/NetworkChangeNotifier;->a(I)V

    :cond_2
    return-void
.end method

.method public static init()Lorg/chromium/net/NetworkChangeNotifier;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifier;

    invoke-direct {v0}, Lorg/chromium/net/NetworkChangeNotifier;-><init>()V

    sput-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 3
    :cond_0
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    return-object v0
.end method

.method public static isProcessBoundToNetwork()Z
    .locals 5

    .line 1
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    if-eqz v0, :cond_2

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    .line 3
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifier;->c:Landroid/net/ConnectivityManager;

    invoke-static {v0}, LzU;->b(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_2
    const/4 v0, 0x0

    .line 5
    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 19
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 21
    invoke-static {v1, v2, p0, p1}, LJ/N;->Mt26m31j(JLjava/lang/Object;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 8

    .line 14
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    .line 16
    invoke-static/range {v2 .. v7}, LJ/N;->MbPIImnU(JLjava/lang/Object;IJ)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifier;->b:LWT;

    invoke-virtual {p2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lm81;

    .line 18
    invoke-interface {p3, p1}, Lm81;->a(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 3

    .line 25
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 27
    invoke-static {v1, v2, p0, p1, p2}, LJ/N;->MDpuHJTB(JLjava/lang/Object;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(JI)V
    .locals 8

    .line 22
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p0

    move-wide v5, p1

    move v7, p3

    .line 24
    invoke-static/range {v2 .. v7}, LJ/N;->MBT1i5cd(JLjava/lang/Object;JI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([J)V
    .locals 3

    .line 28
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 30
    invoke-static {v1, v2, p0, p1}, LJ/N;->MpF$179U(JLjava/lang/Object;[J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addNativeObserver(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 5
    iput p1, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:I

    .line 6
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifier;->getCurrentDefaultNetId()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/net/NetworkChangeNotifier;->a(IJ)V

    return-void
.end method

.method public b(J)V
    .locals 3

    .line 7
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 9
    invoke-static {v1, v2, p0, p1, p2}, LJ/N;->MiJIMrTb(JLjava/lang/Object;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentConnectionSubtype()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->d:LA81;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, LA81;->c()Lw81;

    move-result-object v0

    invoke-virtual {v0}, Lw81;->a()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentConnectionType()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->e:I

    return v0
.end method

.method public getCurrentDefaultNetId()J
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->d:LA81;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, LA81;->g:Lo81;

    invoke-virtual {v0}, Lo81;->a()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, LA81;->a(Landroid/net/Network;)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getCurrentNetworksAndTypes()[J
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->d:LA81;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [J

    goto :goto_1

    .line 2
    :cond_0
    iget-object v2, v0, LA81;->g:Lo81;

    const/4 v3, 0x0

    invoke-static {v2, v3}, LA81;->a(Lo81;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v2

    .line 3
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [J

    .line 4
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v6, v2, v1

    add-int/lit8 v7, v5, 0x1

    .line 5
    invoke-static {v6}, LA81;->a(Landroid/net/Network;)J

    move-result-wide v8

    aput-wide v8, v3, v5

    add-int/lit8 v5, v7, 0x1

    .line 6
    iget-object v8, v0, LA81;->g:Lo81;

    invoke-virtual {v8, v6}, Lo81;->a(Landroid/net/Network;)I

    move-result v6

    int-to-long v8, v6

    aput-wide v8, v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_1
    return-object v0
.end method

.method public registerNetworkCallbackFailed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->d:LA81;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, v0, LA81;->o:Z

    :goto_0
    return v0
.end method

.method public removeNativeObserver(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
