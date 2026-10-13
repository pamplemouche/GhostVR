.class public LyC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public A:LZB0;

.field public final B:Ljava/util/List;

.field public C:I

.field public final D:Ljava/util/List;

.field public final w:LzC0;

.field public final x:LzC0;

.field public y:[LWB0;

.field public z:[LcC0;


# direct methods
.method public constructor <init>(LzC0;LzC0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LyC0;->B:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LyC0;->D:Ljava/util/List;

    .line 4
    iput-object p1, p0, LyC0;->w:LzC0;

    .line 5
    iput-object p2, p0, LyC0;->x:LzC0;

    const/16 p1, 0x8

    new-array p1, p1, [LcC0;

    .line 6
    iput-object p1, p0, LyC0;->z:[LcC0;

    const/16 p1, 0x9

    new-array p1, p1, [LWB0;

    .line 7
    iput-object p1, p0, LyC0;->y:[LWB0;

    return-void
.end method


# virtual methods
.method public a(LyC0;)I
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, LyC0;->w:LzC0;

    iget-object v2, p1, LyC0;->w:LzC0;

    invoke-virtual {v1, v2}, LzC0;->a(LzC0;)I

    move-result v1

    if-nez v1, :cond_4

    .line 2
    iget-object v1, p0, LyC0;->x:LzC0;

    if-nez v1, :cond_2

    iget-object p1, p1, LyC0;->x:LzC0;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 3
    :cond_2
    iget-object p1, p1, LyC0;->x:LzC0;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_3
    invoke-virtual {v1, p1}, LzC0;->a(LzC0;)I

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public a(I)Ljava/lang/Integer;
    .locals 2

    .line 5
    iget-object v0, p0, LyC0;->y:[LWB0;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 6
    aget-object p1, v0, p1

    .line 7
    iget-object p1, p1, LWB0;->y:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LyC0;->D:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(II)V
    .locals 7

    const-string v0, ""

    const/4 v1, 0x2

    if-nez p1, :cond_0

    .line 8
    iget-object v2, p0, LyC0;->y:[LWB0;

    aget-object v3, v2, p1

    if-nez v3, :cond_3

    .line 9
    new-instance v3, LWB0;

    const/16 v4, 0x1a

    .line 10
    iget-object v5, p0, LyC0;->w:LzC0;

    .line 11
    invoke-virtual {v5}, LzC0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1, v0}, LWB0;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    aput-object v3, v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    .line 12
    iget-object v2, p0, LyC0;->y:[LWB0;

    aget-object v3, v2, p1

    if-nez v3, :cond_1

    .line 13
    new-instance v3, LWB0;

    const/16 v4, 0x1f

    .line 14
    iget-object v5, p0, LyC0;->w:LzC0;

    .line 15
    iget-object v5, v5, LzC0;->y:Ljava/lang/String;

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, LWB0;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    aput-object v3, v2, p1

    :cond_1
    if-ne p2, v1, :cond_2

    const-string v0, "SoundContentSetting.MuteBy.SiteSettings"

    .line 17
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "SoundContentSetting.UnmuteBy.SiteSettings"

    .line 18
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 19
    :cond_3
    :goto_0
    iget-object v0, p0, LyC0;->y:[LWB0;

    aget-object v1, v0, p1

    if-eqz v1, :cond_5

    .line 20
    aget-object p1, v0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p1, :cond_4

    .line 21
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iget v1, p1, LWB0;->w:I

    iget-object p1, p1, LWB0;->x:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 22
    invoke-static {v0, v1, p1, p2}, LJ/N;->Mb3LSqSL(Ljava/lang/Object;ILjava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 23
    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public a(LxC0;)V
    .locals 3

    .line 24
    iget-object v0, p0, LyC0;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LyC0;->C:I

    .line 25
    new-instance v0, LwC0;

    invoke-direct {v0, p0, p1}, LwC0;-><init>(LyC0;LxC0;)V

    .line 26
    iget-object p1, p0, LyC0;->A:LZB0;

    if-eqz p1, :cond_0

    .line 27
    iget-object v1, p1, LZB0;->w:Ljava/lang/String;

    .line 28
    invoke-static {v1}, LJ/N;->M9r8DppB(Ljava/lang/String;)V

    .line 29
    iget-object p1, p1, LZB0;->w:Ljava/lang/String;

    .line 30
    invoke-static {p1, v0}, LJ/N;->MxFHIsRa(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, LyC0;->A:LZB0;

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge$StorageInfoClearedCallback;->onStorageInfoCleared()V

    .line 33
    :goto_0
    iget-object p1, p0, LyC0;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LvC0;

    .line 34
    iget-object v2, v1, LvC0;->w:Ljava/lang/String;

    iget v1, v1, LvC0;->x:I

    .line 35
    invoke-static {v2, v1, v0}, LJ/N;->Ms48wdG2(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 36
    :cond_1
    iget-object p1, p0, LyC0;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(I)Ljava/lang/Integer;
    .locals 2

    .line 2
    iget-object v0, p0, LyC0;->z:[LcC0;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    aget-object p1, v0, p1

    .line 3
    invoke-virtual {p1}, LcC0;->a()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LyC0;->w:LzC0;

    invoke-virtual {v0}, LzC0;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(II)V
    .locals 2

    .line 4
    iget-object v0, p0, LyC0;->z:[LcC0;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    aget-object p1, v0, p1

    .line 5
    iget v0, p1, LcC0;->z:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    iget-object v0, p1, LcC0;->y:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, LcC0;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean p1, p1, LcC0;->w:Z

    .line 8
    invoke-static {v0, v1, p2, p1}, LJ/N;->MZUrmXKr(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 9
    :pswitch_1
    iget-object v0, p1, LcC0;->y:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, LcC0;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean p1, p1, LcC0;->w:Z

    .line 11
    invoke-static {v0, v1, p2, p1}, LJ/N;->Mz8Cjk1Z(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 12
    :pswitch_2
    iget-object v0, p1, LcC0;->y:Ljava/lang/String;

    iget-boolean p1, p1, LcC0;->w:Z

    .line 13
    invoke-static {v0, p2, p1}, LJ/N;->M5vJ9grg(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 14
    :pswitch_3
    iget-object v0, p1, LcC0;->y:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, LcC0;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean p1, p1, LcC0;->w:Z

    .line 16
    invoke-static {v0, v1, p2, p1}, LJ/N;->MPS16M3x(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 17
    :pswitch_4
    iget-object v0, p1, LcC0;->y:Ljava/lang/String;

    iget-boolean p1, p1, LcC0;->w:Z

    .line 18
    invoke-static {v0, p2, p1}, LJ/N;->MC6wmUbx(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 19
    :pswitch_5
    iget-object v0, p1, LcC0;->y:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, LcC0;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean p1, p1, LcC0;->w:Z

    .line 21
    invoke-static {v0, v1, p2, p1}, LJ/N;->MKkQqxgI(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 22
    :pswitch_6
    iget-object v0, p1, LcC0;->y:Ljava/lang/String;

    iget-boolean p1, p1, LcC0;->w:Z

    .line 23
    invoke-static {v0, p2, p1}, LJ/N;->M0Lm8oq2(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 24
    :pswitch_7
    iget-object v0, p1, LcC0;->y:Ljava/lang/String;

    iget-boolean p1, p1, LcC0;->w:Z

    .line 25
    invoke-static {v0, p2, p1}, LJ/N;->M6_X2OVL(Ljava/lang/String;IZ)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()J
    .locals 5

    .line 1
    iget-object v0, p0, LyC0;->A:LZB0;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v3, v0, LZB0;->x:J

    add-long/2addr v1, v3

    .line 3
    :cond_0
    iget-object v0, p0, LyC0;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LvC0;

    .line 4
    iget-wide v3, v3, LvC0;->y:J

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method
