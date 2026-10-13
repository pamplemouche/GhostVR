.class public LG3;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Landroid/os/Bundle;

.field public C:I

.field public D:I

.field public E:Landroid/app/Notification;

.field public F:Landroid/widget/RemoteViews;

.field public G:Landroid/widget/RemoteViews;

.field public H:Landroid/widget/RemoteViews;

.field public I:Ljava/lang/String;

.field public J:I

.field public K:Ljava/lang/String;

.field public L:J

.field public M:I

.field public N:Landroid/app/Notification;

.field public O:Ljava/util/ArrayList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/app/PendingIntent;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroid/widget/RemoteViews;

.field public i:Landroid/graphics/Bitmap;

.field public j:Ljava/lang/CharSequence;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:LH3;

.field public p:Ljava/lang/CharSequence;

.field public q:[Ljava/lang/CharSequence;

.field public r:I

.field public s:I

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG3;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG3;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LG3;->m:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LG3;->x:Z

    .line 6
    iput v0, p0, LG3;->C:I

    .line 7
    iput v0, p0, LG3;->D:I

    .line 8
    iput v0, p0, LG3;->J:I

    .line 9
    iput v0, p0, LG3;->M:I

    .line 10
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, LG3;->N:Landroid/app/Notification;

    .line 11
    iput-object p1, p0, LG3;->a:Landroid/content/Context;

    .line 12
    iput-object p2, p0, LG3;->I:Ljava/lang/String;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Landroid/app/Notification;->when:J

    .line 14
    iget-object p1, p0, LG3;->N:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 15
    iput v0, p0, LG3;->l:I

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LG3;->O:Ljava/util/ArrayList;

    return-void
.end method

.method public static c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a(LH3;)LG3;
    .locals 1

    .line 16
    iget-object v0, p0, LG3;->o:LH3;

    if-eq v0, p1, :cond_0

    .line 17
    iput-object p1, p0, LG3;->o:LH3;

    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p1, LH3;->a:LG3;

    if-eq v0, p0, :cond_0

    .line 19
    iput-object p0, p1, LH3;->a:LG3;

    .line 20
    invoke-virtual {p0, p1}, LG3;->a(LH3;)LG3;

    :cond_0
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)LG3;
    .locals 9

    if-eqz p1, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LG3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070091

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070090

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v1, v1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    int-to-double v5, v0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    .line 9
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 12
    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 13
    :cond_2
    :goto_0
    iput-object p1, p0, LG3;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)LG3;
    .locals 0

    .line 1
    invoke-static {p1}, LG3;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LG3;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a()Landroid/app/Notification;
    .locals 8

    .line 21
    new-instance v0, LI3;

    invoke-direct {v0, p0}, LI3;-><init>(LG3;)V

    .line 22
    iget-object v1, v0, LI3;->b:LG3;

    iget-object v1, v1, LG3;->o:LH3;

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v1, v0}, LH3;->a(LC3;)V

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v1, v0}, LH3;->c(LC3;)Landroid/widget/RemoteViews;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 25
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_2

    .line 26
    iget-object v4, v0, LI3;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    goto/16 :goto_1

    :cond_2
    const/16 v5, 0x18

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-lt v4, v5, :cond_4

    .line 27
    iget-object v4, v0, LI3;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 28
    iget v5, v0, LI3;->g:I

    if-eqz v5, :cond_9

    .line 29
    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v5, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_3

    iget v5, v0, LI3;->g:I

    if-ne v5, v7, :cond_3

    .line 30
    invoke-virtual {v0, v4}, LI3;->a(Landroid/app/Notification;)V

    .line 31
    :cond_3
    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    iget v5, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_9

    iget v5, v0, LI3;->g:I

    if-ne v5, v6, :cond_9

    .line 32
    invoke-virtual {v0, v4}, LI3;->a(Landroid/app/Notification;)V

    goto :goto_1

    .line 33
    :cond_4
    iget-object v4, v0, LI3;->a:Landroid/app/Notification$Builder;

    iget-object v5, v0, LI3;->f:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 34
    iget-object v4, v0, LI3;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 35
    iget-object v5, v0, LI3;->c:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_5

    .line 36
    iput-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 37
    :cond_5
    iget-object v5, v0, LI3;->d:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_6

    .line 38
    iput-object v5, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 39
    :cond_6
    iget-object v5, v0, LI3;->h:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_7

    .line 40
    iput-object v5, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 41
    :cond_7
    iget v5, v0, LI3;->g:I

    if-eqz v5, :cond_9

    .line 42
    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    iget v5, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_8

    iget v5, v0, LI3;->g:I

    if-ne v5, v7, :cond_8

    .line 43
    invoke-virtual {v0, v4}, LI3;->a(Landroid/app/Notification;)V

    .line 44
    :cond_8
    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    iget v5, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_9

    iget v5, v0, LI3;->g:I

    if-ne v5, v6, :cond_9

    .line 45
    invoke-virtual {v0, v4}, LI3;->a(Landroid/app/Notification;)V

    :cond_9
    :goto_1
    if-eqz v3, :cond_a

    .line 46
    iput-object v3, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_2

    .line 47
    :cond_a
    iget-object v3, v0, LI3;->b:LG3;

    iget-object v3, v3, LG3;->F:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_b

    .line 48
    iput-object v3, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_b
    :goto_2
    if-eqz v1, :cond_c

    .line 49
    invoke-virtual {v1, v0}, LH3;->b(LC3;)Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 50
    iput-object v3, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_c
    if-eqz v1, :cond_e

    .line 51
    iget-object v0, v0, LI3;->b:LG3;

    iget-object v0, v0, LG3;->o:LH3;

    if-eqz v0, :cond_d

    goto :goto_3

    .line 52
    :cond_d
    throw v2

    :cond_e
    :goto_3
    if-eqz v1, :cond_f

    .line 53
    iget-object v0, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :cond_f
    return-object v4
.end method

.method public final a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 14
    iget-object p2, p0, LG3;->N:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, LG3;->N:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)LG3;
    .locals 0

    .line 1
    invoke-static {p1}, LG3;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LG3;->d:Ljava/lang/CharSequence;

    return-object p0
.end method
