.class public final LRy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LfQ;

.field public b:Ljava/util/List;

.field public final c:Landroid/content/Context;

.field public final d:Lnw;

.field public final e:Lpw;

.field public final f:LbR;

.field public final g:I

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnw;Lpw;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LRy;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LRy;->d:Lnw;

    .line 4
    iput-object p3, p0, LRy;->e:Lpw;

    .line 5
    iput p4, p0, LRy;->g:I

    packed-switch p4, :pswitch_data_0

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, p1

    goto :goto_0

    .line 7
    :pswitch_0
    sget-object p1, LbR;->B:LbR;

    goto :goto_1

    .line 8
    :pswitch_1
    sget-object p1, LbR;->D:LbR;

    goto :goto_1

    .line 9
    :pswitch_2
    sget-object p1, LbR;->A:LbR;

    goto :goto_1

    .line 10
    :pswitch_3
    sget-object p1, LbR;->E:LbR;

    goto :goto_1

    .line 11
    :pswitch_4
    sget-object p1, LbR;->z:LbR;

    goto :goto_1

    .line 12
    :pswitch_5
    sget-object p1, LbR;->C:LbR;

    goto :goto_1

    .line 13
    :pswitch_6
    sget-object p1, LbR;->x:LbR;

    goto :goto_1

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x5

    const-string v1, "FeedRequestManagerImpl"

    const-string v3, "Cannot map request reason with value %d"

    .line 14
    invoke-static/range {v0 .. v5}, Lhy;->a(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z[Ljava/lang/Object;)V

    .line 15
    sget-object p1, LbR;->x:LbR;

    .line 16
    :goto_1
    iput-object p1, p0, LRy;->f:LbR;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/Map;Ljava/lang/Object;)I
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 4
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
