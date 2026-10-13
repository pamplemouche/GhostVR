.class public Lba0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lc90;
.implements LdU0;
.implements Lorg/chromium/components/offline_items_collection/VisualsCallback;


# static fields
.field public static final A:Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;


# instance fields
.field public final w:LeU0;

.field public final x:LY80;

.field public final y:Ljava/util/HashMap;

.field public final z:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;

    invoke-direct {v0}, Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;-><init>()V

    sput-object v0, Lba0;->A:Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;

    return-void
.end method

.method public constructor <init>(LeU0;LY80;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lba0;->y:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lba0;->z:Ljava/util/HashMap;

    .line 4
    iput-object p1, p0, Lba0;->w:LeU0;

    .line 5
    iput-object p2, p0, Lba0;->x:LY80;

    .line 6
    invoke-interface {p1, p0}, LeU0;->a(LdU0;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(LbU0;Lorg/chromium/chrome/browser/download/DownloadItem;Z)V
    .locals 0

    .line 8
    iget-object p2, p0, Lba0;->w:LeU0;

    invoke-interface {p2, p1, p3}, LeU0;->a(LbU0;Z)V

    return-void
.end method

.method public a(LbU0;Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lba0;->y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/offline_items_collection/OfflineItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 4
    sget-object p2, Lba0;->A:Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lba0;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lba0;->z:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_2
    invoke-virtual {p0, v0, p2}, Lba0;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;)V

    return-void
.end method

.method public a(LbU0;Z)V
    .locals 0

    .line 7
    iget-object p2, p0, Lba0;->w:LeU0;

    invoke-interface {p2, p1}, LeU0;->a(LbU0;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/offline_items_collection/OfflineItem;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lba0;->b(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;)V
    .locals 8

    .line 9
    iget-boolean v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->B:Z

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_3

    const/4 v6, 0x5

    if-eq v0, v6, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 11
    :cond_3
    :goto_0
    new-instance v0, Ln80;

    invoke-direct {v0}, Ln80;-><init>()V

    iget-object v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    .line 12
    iput-object v6, v0, Ln80;->y:LbU0;

    .line 13
    iget-object v6, v6, LbU0;->b:Ljava/lang/String;

    .line 14
    iput-object v6, v0, Ln80;->m:Ljava/lang/String;

    .line 15
    iget-object v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->x:Ljava/lang/String;

    .line 16
    iput-object v6, v0, Ln80;->e:Ljava/lang/String;

    .line 17
    iget-object v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->N:Ljava/lang/String;

    .line 18
    iput-object v6, v0, Ln80;->g:Ljava/lang/String;

    .line 19
    iget-object v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->y:Ljava/lang/String;

    .line 20
    iput-object v6, v0, Ln80;->f:Ljava/lang/String;

    .line 21
    iget-boolean v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->A:Z

    .line 22
    iput-boolean v6, v0, Ln80;->A:Z

    .line 23
    iget-wide v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->L:J

    .line 24
    iput-wide v6, v0, Ln80;->w:J

    .line 25
    iget-boolean v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->M:Z

    .line 26
    iput-boolean v6, v0, Ln80;->z:Z

    .line 27
    iget-object v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->O:Ljava/lang/String;

    .line 28
    iput-object v6, v0, Ln80;->c:Ljava/lang/String;

    .line 29
    iget-object v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->P:Ljava/lang/String;

    .line 30
    iput-object v6, v0, Ln80;->a:Ljava/lang/String;

    .line 31
    iget-object v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->Q:Ljava/lang/String;

    .line 32
    iput-object v6, v0, Ln80;->i:Ljava/lang/String;

    .line 33
    iget-boolean v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->R:Z

    .line 34
    iput-boolean v6, v0, Ln80;->t:Z

    .line 35
    iput v1, v0, Ln80;->v:I

    .line 36
    iget v1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    const/4 v6, 0x6

    if-ne v1, v6, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 37
    :goto_1
    iput-boolean v1, v0, Ln80;->s:Z

    .line 38
    iget-boolean v1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->T:Z

    .line 39
    iput-boolean v1, v0, Ln80;->r:Z

    .line 40
    iget-wide v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->V:J

    .line 41
    iput-wide v6, v0, Ln80;->j:J

    .line 42
    iget-wide v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->H:J

    .line 43
    iput-wide v6, v0, Ln80;->k:J

    .line 44
    iget-object v1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->W:LfU0;

    .line 45
    iput-object v1, v0, Ln80;->p:LfU0;

    .line 46
    iget-wide v6, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->X:J

    .line 47
    iput-wide v6, v0, Ln80;->q:J

    .line 48
    iget-boolean v1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->Y:Z

    .line 49
    iput-boolean v1, v0, Ln80;->x:Z

    .line 50
    iget-boolean v1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->C:Z

    .line 51
    iput-boolean v1, v0, Ln80;->B:Z

    const/4 v1, 0x0

    if-nez p2, :cond_5

    move-object p2, v1

    goto :goto_2

    .line 52
    :cond_5
    iget-object p2, p2, Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;->a:Landroid/graphics/Bitmap;

    .line 53
    :goto_2
    iput-object p2, v0, Ln80;->C:Landroid/graphics/Bitmap;

    .line 54
    iget p2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->a0:I

    .line 55
    iput p2, v0, Ln80;->D:I

    .line 56
    iget p2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->Z:I

    .line 57
    iput p2, v0, Ln80;->E:I

    .line 58
    iget-boolean p2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->D:Z

    .line 59
    iput-boolean p2, v0, Ln80;->F:Z

    .line 60
    invoke-virtual {v0}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object p2

    .line 61
    iget v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 62
    :pswitch_0
    iget-object p1, p0, Lba0;->x:LY80;

    check-cast p1, LG90;

    invoke-virtual {p1, p2}, LG90;->b(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    goto :goto_3

    .line 63
    :pswitch_1
    iget-object p1, p0, Lba0;->x:LY80;

    check-cast p1, LG90;

    invoke-virtual {p1, p2}, LG90;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    goto :goto_3

    .line 64
    :pswitch_2
    iget-object v0, p0, Lba0;->x:LY80;

    iget p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->a0:I

    check-cast v0, LG90;

    if-eqz v0, :cond_6

    .line 65
    new-instance v1, LF90;

    invoke-direct {v1, v2, p2, v4}, LF90;-><init>(ILorg/chromium/chrome/browser/download/DownloadInfo;I)V

    .line 66
    iput-boolean v5, v1, LF90;->j:Z

    .line 67
    iput p1, v1, LF90;->k:I

    .line 68
    invoke-virtual {v0, v1}, LG90;->a(LF90;)V

    goto :goto_3

    .line 69
    :cond_6
    throw v1

    .line 70
    :pswitch_3
    iget-object p2, p0, Lba0;->x:LY80;

    iget-object p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    check-cast p2, LG90;

    invoke-virtual {p2, p1}, LG90;->a(LbU0;)V

    goto :goto_3

    .line 71
    :pswitch_4
    iget-object v0, p0, Lba0;->x:LY80;

    const-wide/16 v5, -0x1

    iget-boolean p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->M:Z

    check-cast v0, LG90;

    if-eqz v0, :cond_7

    .line 72
    new-instance v1, LF90;

    invoke-direct {v1, v3, p2, v4}, LF90;-><init>(ILorg/chromium/chrome/browser/download/DownloadInfo;I)V

    .line 73
    iput-wide v5, v1, LF90;->f:J

    .line 74
    iput-boolean v4, v1, LF90;->g:Z

    .line 75
    iput-boolean p1, v1, LF90;->h:Z

    .line 76
    invoke-virtual {v0, v1}, LG90;->a(LF90;)V

    goto :goto_3

    .line 77
    :cond_7
    throw v1

    .line 78
    :pswitch_5
    iget-object p1, p0, Lba0;->x:LY80;

    check-cast p1, LG90;

    invoke-virtual {p1, p2}, LG90;->b(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    goto :goto_3

    .line 79
    :pswitch_6
    iget-object v0, p0, Lba0;->x:LY80;

    iget-wide v2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->J:J

    iget-boolean p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->U:Z

    check-cast v0, LG90;

    if-eqz v0, :cond_8

    .line 80
    new-instance v1, LF90;

    invoke-direct {v1, v4, p2, v5}, LF90;-><init>(ILorg/chromium/chrome/browser/download/DownloadInfo;I)V

    .line 81
    iput-wide v2, v1, LF90;->e:J

    .line 82
    iput-boolean p1, v1, LF90;->i:Z

    .line 83
    invoke-virtual {v0, v1}, LG90;->a(LF90;)V

    goto :goto_3

    .line 84
    :cond_8
    throw v1

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lba0;->b(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V

    return-void
.end method

.method public final a(Lorg/chromium/components/offline_items_collection/OfflineItem;)Z
    .locals 3

    .line 85
    iget-boolean v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->F:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 86
    :cond_0
    iget p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public b(LbU0;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lba0;->w:LeU0;

    invoke-interface {p2, p1}, LeU0;->b(LbU0;)V

    return-void
.end method

.method public final b(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V
    .locals 4

    .line 2
    iget v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-boolean v0, p2, Lorg/chromium/components/offline_items_collection/UpdateDelta;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lorg/chromium/components/offline_items_collection/UpdateDelta;->b:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 4
    iget-boolean p2, p2, Lorg/chromium/components/offline_items_collection/UpdateDelta;->b:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lba0;->z:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_5
    iget-boolean p2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->F:Z

    if-eqz p2, :cond_6

    goto :goto_2

    .line 6
    :cond_6
    iget p2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    if-eqz p2, :cond_7

    if-eq p2, v3, :cond_7

    if-eq p2, v2, :cond_7

    const/4 v0, 0x4

    if-eq p2, v0, :cond_7

    const/4 v0, 0x5

    if-eq p2, v0, :cond_7

    const/4 v0, 0x6

    if-eq p2, v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_9

    .line 7
    iget-object p2, p0, Lba0;->z:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 8
    iget-object p2, p0, Lba0;->y:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v3

    .line 9
    iget-object v0, p0, Lba0;->y:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_8

    .line 10
    iget-object p2, p0, Lba0;->w:LeU0;

    iget-object p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-interface {p2, p1, p0}, LeU0;->a(LbU0;Lorg/chromium/components/offline_items_collection/VisualsCallback;)V

    :cond_8
    return-void

    .line 11
    :cond_9
    iget-object p2, p0, Lba0;->y:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p2, p0, Lba0;->z:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_a
    iget-object p2, p0, Lba0;->z:Ljava/util/HashMap;

    iget-object v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;

    invoke-virtual {p0, p1, p2}, Lba0;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/OfflineItemVisuals;)V

    .line 14
    invoke-virtual {p0, p1}, Lba0;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lba0;->z:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public c(LbU0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lba0;->y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lba0;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lba0;->x:LY80;

    check-cast v0, LG90;

    .line 4
    invoke-virtual {v0, p1}, LG90;->b(LbU0;)J

    .line 5
    invoke-virtual {v0}, LG90;->a()LW80;

    move-result-object v0

    invoke-virtual {v0, p1}, LW80;->b(LbU0;)V

    return-void
.end method
