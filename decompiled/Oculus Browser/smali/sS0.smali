.class public LsS0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LsS0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_8

    const/16 v0, 0x15

    if-eq p0, v0, :cond_7

    const/16 v2, 0x16

    if-eq p0, v2, :cond_6

    const/16 v3, 0x2a

    if-eq p0, v3, :cond_5

    const/16 v3, 0x2b

    if-eq p0, v3, :cond_4

    const/16 v3, 0x53

    if-eq p0, v3, :cond_3

    const/16 v3, 0x5b

    if-eq p0, v3, :cond_2

    const v3, 0x8378

    const/4 v4, 0x0

    if-eq p0, v3, :cond_1

    const v3, 0x11684

    if-eq p0, v3, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    return v4

    :pswitch_0
    return v2

    :pswitch_1
    return v0

    :pswitch_2
    const/16 p0, 0x14

    return p0

    :pswitch_3
    const/16 p0, 0x13

    return p0

    :pswitch_4
    const/16 p0, 0x11

    return p0

    :pswitch_5
    const/16 p0, 0x10

    return p0

    :pswitch_6
    const/16 p0, 0xb

    return p0

    :pswitch_7
    const/4 p0, 0x7

    return p0

    :pswitch_8
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/16 p0, 0x12

    return p0

    :pswitch_a
    const/16 p0, 0xd

    return p0

    :pswitch_b
    const/16 p0, 0x9

    return p0

    :pswitch_c
    const/16 p0, 0x8

    return p0

    :cond_0
    return v1

    :cond_1
    return v4

    :cond_2
    const/16 p0, 0xc

    return p0

    :cond_3
    const/16 p0, 0xa

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, 0x4

    return p0

    :cond_6
    const/16 p0, 0xe

    return p0

    :cond_7
    const/4 p0, 0x3

    return p0

    :cond_8
    const/16 p0, 0xf

    return p0

    :cond_9
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()LsS0;
    .locals 1

    .line 1
    sget-object v0, LsS0;->a:LsS0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LsS0;

    invoke-direct {v0}, LsS0;-><init>()V

    sput-object v0, LsS0;->a:LsS0;

    .line 3
    :cond_0
    sget-object v0, LsS0;->a:LsS0;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 21
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 22
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 23
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const-string v2, "bts_cached_uma"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    invoke-static {v1}, LrS0;->a(Ljava/lang/String;)LrS0;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 26
    :goto_1
    iget v4, v1, LrS0;->c:I

    if-ge v3, v4, :cond_0

    .line 27
    iget-object v4, v1, LrS0;->a:Ljava/lang/String;

    .line 28
    iget v5, v1, LrS0;->b:I

    const/16 v6, 0x17

    .line 29
    invoke-static {v4, v5, v6}, LfV;->a(Ljava/lang/String;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 30
    :cond_2
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 31
    invoke-static {v0, v2}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 17
    invoke-static {p1}, LsS0;->a(I)I

    move-result p1

    const-string p2, "Android.BackgroundTaskScheduler.TaskCreated.WithExpiration"

    .line 18
    invoke-virtual {p0, p2, p1}, LsS0;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1}, LsS0;->a(I)I

    move-result p1

    const-string p2, "Android.BackgroundTaskScheduler.TaskCreated.WithoutExpiration"

    .line 20
    invoke-virtual {p0, p2, p1}, LsS0;->a(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 8

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 2
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const-string v3, "bts_cached_uma"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 6
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v6, :cond_3

    .line 7
    invoke-static {v6}, LrS0;->a(Ljava/lang/String;)LrS0;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    new-instance v1, LrS0;

    invoke-direct {v1, p1, p2, v2}, LrS0;-><init>(Ljava/lang/String;II)V

    .line 9
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    iget p1, v1, LrS0;->c:I

    add-int/2addr p1, v2

    iput p1, v1, LrS0;->c:I

    goto :goto_1

    .line 11
    :cond_3
    new-instance v1, LrS0;

    invoke-direct {v1, p1, p2, v2}, LrS0;-><init>(Ljava/lang/String;II)V

    .line 12
    :goto_1
    invoke-virtual {v1}, LrS0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 15
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
