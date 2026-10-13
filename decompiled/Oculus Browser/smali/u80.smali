.class public Lu80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LdU0;


# instance fields
.field public final A:Ljava/util/LinkedHashMap;

.field public final B:Ljava/util/Set;

.field public final C:Ljava/util/Set;

.field public final D:Ljava/util/Map;

.field public E:I

.field public F:Ljava/lang/Runnable;

.field public G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

.field public H:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

.field public I:Lwf0;

.field public final w:Z

.field public final x:Z

.field public final y:Landroid/os/Handler;

.field public final z:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lu80;->y:Landroid/os/Handler;

    .line 3
    new-instance v0, Lt80;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lt80;-><init>(Lu80;Lr80;)V

    iput-object v0, p0, Lu80;->z:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar$Client;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lu80;->A:Ljava/util/LinkedHashMap;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lu80;->B:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lu80;->C:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu80;->D:Ljava/util/Map;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lu80;->E:I

    .line 9
    new-instance v0, Lr80;

    invoke-direct {v0, p0}, Lr80;-><init>(Lu80;)V

    iput-object v0, p0, Lu80;->I:Lwf0;

    const-string v0, "UseDownloadOfflineContentProvider"

    .line 10
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    .line 11
    iput-boolean v0, p0, Lu80;->w:Z

    .line 12
    iput-boolean p1, p0, Lu80;->x:Z

    .line 13
    iget-object p1, p0, Lu80;->y:Landroid/os/Handler;

    new-instance v0, Lo80;

    invoke-direct {v0, p0}, Lo80;-><init>(Lu80;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 135
    iget-object v0, p0, Lu80;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->l()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 138
    sget-object v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->K:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 139
    iget-object v1, p0, Lu80;->I:Lwf0;

    .line 140
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->z:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    iget-object v0, p0, Lu80;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->closeInfoBar()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lu80;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/offline_items_collection/OfflineItem;

    .line 4
    invoke-virtual {p0, v0}, Lu80;->b(Lorg/chromium/components/offline_items_collection/OfflineItem;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1, v1, v1}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;ZZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V
    .locals 1

    .line 6
    invoke-virtual {p0, p1}, Lu80;->b(Lorg/chromium/components/offline_items_collection/OfflineItem;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iget-boolean p2, p2, Lorg/chromium/components/offline_items_collection/UpdateDelta;->a:Z

    if-nez p2, :cond_1

    iget p2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget p2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 9
    iget-object p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {p0, p1}, Lu80;->c(LbU0;)V

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, p2, p2}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;ZZZ)V

    return-void
.end method

.method public final a(Lorg/chromium/components/offline_items_collection/OfflineItem;ZZZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 11
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->c()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 12
    iget-object v2, v0, Lu80;->C:Ljava/util/Set;

    iget-object v3, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget v4, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    if-ne v4, v2, :cond_3

    .line 14
    iput v3, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    :cond_3
    :goto_0
    const/4 v4, 0x0

    if-nez p2, :cond_5

    if-eqz v1, :cond_4

    .line 15
    iget v5, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    if-nez v5, :cond_4

    iget-object v5, v0, Lu80;->B:Ljava/util/Set;

    iget-object v6, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    .line 16
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v1, :cond_7

    .line 17
    iget-object v6, v0, Lu80;->A:Ljava/util/LinkedHashMap;

    iget-object v7, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    iget-object v6, v0, Lu80;->A:Ljava/util/LinkedHashMap;

    iget-object v7, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/components/offline_items_collection/OfflineItem;

    iget v6, v6, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    if-ne v6, v3, :cond_7

    iget v6, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-eqz v1, :cond_8

    .line 19
    iget-object v7, v0, Lu80;->A:Ljava/util/LinkedHashMap;

    iget-object v8, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {v7, v8, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v7, v0, Lu80;->B:Ljava/util/Set;

    iget-object v8, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v7, 0x6

    if-eqz v1, :cond_9

    .line 21
    iget v8, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    if-ne v8, v7, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_a

    .line 22
    iget-object v9, v0, Lu80;->C:Ljava/util/Set;

    iget-object v10, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v9, v0, Lu80;->A:Ljava/util/LinkedHashMap;

    iget-object v10, v1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lu80;->c()Ls80;

    move-result-object v9

    .line 25
    iget v10, v9, Ls80;->d:I

    iget v11, v9, Ls80;->c:I

    add-int/2addr v10, v11

    iget v11, v9, Ls80;->b:I

    add-int/2addr v10, v11

    if-lez v10, :cond_b

    const/4 v10, 0x1

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    .line 26
    :goto_6
    iget-object v11, v0, Lu80;->F:Ljava/lang/Runnable;

    if-eqz v11, :cond_c

    iget v11, v0, Lu80;->E:I

    if-ne v11, v3, :cond_c

    const/4 v11, 0x1

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    .line 27
    :goto_7
    iget v12, v0, Lu80;->E:I

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eqz v12, :cond_18

    if-eq v12, v3, :cond_13

    if-eq v12, v14, :cond_d

    if-eq v12, v13, :cond_18

    goto/16 :goto_d

    :cond_d
    if-eqz v5, :cond_e

    .line 28
    invoke-virtual/range {p0 .. p1}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, v9, Ls80;->a:I

    if-ne v1, v3, :cond_19

    goto :goto_a

    :cond_e
    if-nez v10, :cond_1b

    .line 29
    iget-object v1, v0, Lu80;->F:Ljava/lang/Runnable;

    if-nez v1, :cond_f

    iget v1, v9, Ls80;->a:I

    if-lez v1, :cond_f

    const/4 v12, 0x1

    .line 30
    :cond_f
    iget-object v1, v0, Lu80;->H:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_10

    const/4 v1, 0x1

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_11

    if-eqz v6, :cond_11

    const/4 v12, 0x1

    :cond_11
    if-nez v8, :cond_12

    if-eqz p4, :cond_1b

    .line 32
    :cond_12
    iget-object v1, v0, Lu80;->A:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1b

    const/4 v12, 0x0

    goto :goto_d

    :cond_13
    if-eqz v5, :cond_14

    const/4 v11, 0x0

    :cond_14
    if-eqz v10, :cond_15

    goto :goto_c

    :cond_15
    if-nez v8, :cond_16

    if-eqz p4, :cond_1b

    .line 33
    :cond_16
    iget v1, v9, Ls80;->a:I

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_9

    :cond_17
    const/4 v1, 0x1

    :goto_9
    move v12, v1

    goto :goto_d

    :cond_18
    if-eqz v5, :cond_1a

    .line 34
    invoke-virtual/range {p0 .. p1}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, v9, Ls80;->a:I

    if-ne v1, v3, :cond_19

    :goto_a
    const/4 v11, 0x1

    goto :goto_b

    :cond_19
    const/4 v11, 0x0

    :goto_b
    const/4 v12, 0x1

    goto :goto_d

    :cond_1a
    if-eqz v10, :cond_1b

    :goto_c
    const/4 v12, 0x2

    :cond_1b
    :goto_d
    if-eqz p3, :cond_1c

    const/4 v12, 0x3

    :cond_1c
    if-eqz v12, :cond_1e

    if-ne v12, v13, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v1, 0x0

    goto :goto_f

    :cond_1e
    :goto_e
    const/4 v1, 0x1

    :goto_f
    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v1, :cond_20

    .line 35
    iput-object v5, v0, Lu80;->H:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lu80;->a()V

    if-nez v12, :cond_1f

    .line 37
    iget-object v1, v0, Lu80;->A:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_10

    :cond_1f
    new-array v1, v13, [Ljava/lang/Integer;

    .line 38
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v14

    .line 40
    invoke-virtual {v0, v1}, Lu80;->a([Ljava/lang/Integer;)V

    .line 41
    :goto_10
    iget-object v1, v0, Lu80;->y:Landroid/os/Handler;

    iget-object v8, v0, Lu80;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    iput-object v5, v0, Lu80;->F:Ljava/lang/Runnable;

    :cond_20
    if-eq v12, v3, :cond_21

    if-ne v12, v14, :cond_51

    :cond_21
    if-ne v12, v3, :cond_22

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_12

    .line 44
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lu80;->c()Ls80;

    move-result-object v1

    .line 45
    iget v8, v1, Ls80;->d:I

    if-lez v8, :cond_23

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_12

    .line 46
    :cond_23
    iget-object v8, v0, Lu80;->H:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    if-eqz v8, :cond_24

    iget-object v8, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->k:Ljava/lang/Integer;

    goto :goto_11

    :cond_24
    move-object v8, v5

    :goto_11
    if-eqz v8, :cond_25

    .line 47
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Ls80;->a(I)I

    move-result v1

    if-lez v1, :cond_25

    move-object v1, v8

    goto :goto_12

    .line 48
    :cond_25
    iget-object v1, v0, Lu80;->A:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/components/offline_items_collection/OfflineItem;

    .line 49
    iget v9, v8, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    if-eq v9, v6, :cond_27

    if-ne v9, v3, :cond_26

    .line 50
    :cond_27
    iget v1, v8, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_12

    :cond_28
    move-object v1, v5

    :goto_12
    if-nez v1, :cond_29

    goto/16 :goto_29

    .line 51
    :cond_29
    new-instance v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    invoke-direct {v8}, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;-><init>()V

    const-string v9, "power"

    if-ne v12, v3, :cond_2b

    if-eqz v11, :cond_2a

    const v15, 0x7f080244

    goto :goto_13

    :cond_2a
    const v15, 0x7f080243

    .line 52
    :goto_13
    iput v15, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->e:I

    .line 53
    iput-boolean v3, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->f:Z

    .line 54
    sget-object v15, LzT;->a:Landroid/content/Context;

    .line 55
    invoke-virtual {v15, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 56
    invoke-virtual {v15}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v15

    if-eqz v15, :cond_2e

    const v15, 0x7f080242

    .line 57
    iput v15, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->e:I

    .line 58
    iput-boolean v4, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->f:Z

    goto :goto_14

    .line 59
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v14, :cond_2c

    const v15, 0x7f11000e

    const v2, 0x7f080240

    .line 60
    iput v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->e:I

    .line 61
    iput-boolean v3, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->f:Z

    const v2, 0x7f11000e

    goto :goto_15

    .line 62
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v15, 0x7f08012d

    if-ne v2, v6, :cond_2d

    const v2, 0x7f11000f

    .line 63
    iput v15, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->e:I

    goto :goto_15

    .line 64
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2e

    const v2, 0x7f110010

    .line 65
    iput v15, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->e:I

    goto :goto_15

    :cond_2e
    :goto_14
    const/4 v2, -0x1

    .line 66
    :goto_15
    iget-object v15, v0, Lu80;->A:Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const-wide/16 v16, 0x0

    move-object v7, v5

    move-wide/from16 v5, v16

    :goto_16
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_30

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lorg/chromium/components/offline_items_collection/OfflineItem;

    .line 67
    iget v13, v10, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v13, v14, :cond_2f

    goto :goto_17

    .line 68
    :cond_2f
    iget-wide v13, v10, Lorg/chromium/components/offline_items_collection/OfflineItem;->H:J

    add-long/2addr v5, v13

    move-object v7, v10

    :goto_17
    const/4 v13, 0x3

    const/4 v14, 0x2

    goto :goto_16

    .line 69
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lu80;->c()Ls80;

    move-result-object v10

    const v13, 0x7f13029d

    if-ne v12, v3, :cond_36

    if-eqz v11, :cond_31

    .line 70
    sget-object v2, LzT;->a:Landroid/content/Context;

    const v5, 0x7f1302ae

    .line 71
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->b:Ljava/lang/String;

    goto :goto_19

    .line 72
    :cond_31
    iget v2, v10, Ls80;->a:I

    if-nez v2, :cond_32

    const/4 v2, 0x1

    :cond_32
    cmp-long v7, v5, v16

    if-gtz v7, :cond_33

    .line 73
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 74
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f11000b

    new-array v7, v3, [Ljava/lang/Object;

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    .line 76
    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->b:Ljava/lang/String;

    goto :goto_19

    .line 77
    :cond_33
    sget-object v7, LzT;->a:Landroid/content/Context;

    .line 78
    invoke-static {v7, v5, v6}, Lorg/chromium/chrome/browser/download/DownloadUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    if-ne v2, v3, :cond_34

    .line 79
    sget-object v2, LzT;->a:Landroid/content/Context;

    const v6, 0x7f1302ea

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v4

    .line 80
    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .line 81
    :cond_34
    sget-object v6, LzT;->a:Landroid/content/Context;

    const v7, 0x7f1302eb

    const/4 v10, 0x2

    new-array v14, v10, [Ljava/lang/Object;

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v4

    aput-object v5, v14, v3

    .line 83
    invoke-virtual {v6, v7, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_18
    iput-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->b:Ljava/lang/String;

    .line 84
    :goto_19
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 85
    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 86
    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    xor-int/2addr v2, v3

    .line 87
    iput-boolean v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->g:Z

    if-eqz v11, :cond_35

    const/4 v5, 0x0

    goto :goto_1a

    .line 88
    :cond_35
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 89
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1a
    iput-object v5, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->d:Ljava/lang/String;

    goto :goto_1c

    :cond_36
    const/4 v5, 0x2

    if-ne v12, v5, :cond_39

    .line 90
    invoke-virtual/range {p0 .. p0}, Lu80;->c()Ls80;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Ls80;->a(I)I

    move-result v6

    if-ne v6, v3, :cond_37

    .line 91
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_37

    const/4 v5, 0x1

    goto :goto_1b

    :cond_37
    const/4 v5, 0x0

    :goto_1b
    if-eqz v5, :cond_38

    .line 92
    sget-object v2, LzT;->a:Landroid/content/Context;

    const v5, 0x7f1302ad

    new-array v6, v3, [Ljava/lang/Object;

    .line 93
    iget-object v9, v7, Lorg/chromium/components/offline_items_collection/OfflineItem;->x:Ljava/lang/String;

    aput-object v9, v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->b:Ljava/lang/String;

    .line 94
    iget-object v2, v7, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    iput-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->a:LbU0;

    .line 95
    sget-object v2, LzT;->a:Landroid/content/Context;

    const v5, 0x7f130451

    .line 96
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->d:Ljava/lang/String;

    const v2, 0x7f080241

    .line 97
    iput v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->e:I

    .line 98
    iput-boolean v3, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->g:Z

    .line 99
    iput-boolean v3, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->h:Z

    goto :goto_1c

    .line 100
    :cond_38
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 101
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v4

    .line 103
    invoke-virtual {v5, v2, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->b:Ljava/lang/String;

    .line 104
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 105
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->d:Ljava/lang/String;

    .line 106
    :cond_39
    :goto_1c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3b

    const/4 v5, 0x5

    if-eq v2, v5, :cond_3b

    if-ne v2, v3, :cond_3a

    goto :goto_1d

    :cond_3a
    const/4 v2, 0x0

    goto :goto_1e

    :cond_3b
    :goto_1d
    const/4 v2, 0x1

    :goto_1e
    if-eqz v2, :cond_3c

    move-object v2, v1

    goto :goto_1f

    :cond_3c
    const/4 v2, 0x0

    :goto_1f
    iput-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->k:Ljava/lang/Integer;

    .line 107
    iget-object v2, v0, Lu80;->H:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    invoke-virtual {v8, v2}, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto/16 :goto_28

    :cond_3d
    if-nez v11, :cond_3f

    const/4 v2, 0x2

    if-ne v12, v2, :cond_3e

    goto :goto_20

    :cond_3e
    const/4 v2, 0x0

    goto :goto_21

    :cond_3f
    :goto_20
    const/4 v2, 0x1

    .line 108
    :goto_21
    iget-object v5, v0, Lu80;->y:Landroid/os/Handler;

    iget-object v6, v0, Lu80;->F:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    .line 109
    iput-object v5, v0, Lu80;->F:Ljava/lang/Runnable;

    if-eqz v2, :cond_41

    if-eqz v11, :cond_40

    const-wide/16 v6, 0xbb8

    goto :goto_22

    :cond_40
    const-wide/16 v6, 0x1770

    .line 110
    :goto_22
    new-instance v2, Lq80;

    invoke-direct {v2, v0, v12, v1}, Lq80;-><init>(Lu80;ILjava/lang/Integer;)V

    iput-object v2, v0, Lu80;->F:Ljava/lang/Runnable;

    .line 111
    iget-object v1, v0, Lu80;->y:Landroid/os/Handler;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lu80;->c()Ls80;

    move-result-object v1

    iput-object v1, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->j:Ls80;

    .line 113
    iget-object v2, v0, Lu80;->H:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    if-nez v2, :cond_42

    goto :goto_23

    :cond_42
    iget-object v5, v2, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->j:Ls80;

    .line 114
    :goto_23
    invoke-virtual {v1, v5}, Ls80;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    iput-boolean v1, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->i:Z

    .line 115
    iget-object v1, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 116
    iget-object v1, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->b:Ljava/lang/String;

    goto :goto_24

    .line 117
    :cond_43
    sget-object v1, LzT;->a:Landroid/content/Context;

    const v2, 0x7f1302ac

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 118
    iget-object v5, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->b:Ljava/lang/String;

    aput-object v5, v6, v4

    iget-object v5, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->d:Ljava/lang/String;

    aput-object v5, v6, v3

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_24
    iput-object v1, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->c:Ljava/lang/String;

    .line 119
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->c()Z

    move-result v1

    if-nez v1, :cond_44

    goto/16 :goto_28

    .line 120
    :cond_44
    iput-object v8, v0, Lu80;->H:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    .line 121
    invoke-virtual/range {p0 .. p0}, Lu80;->b()Lorg/chromium/chrome/browser/tab/Tab;

    .line 122
    iget-object v1, v0, Lu80;->G:Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;

    if-nez v1, :cond_45

    goto :goto_25

    .line 123
    :cond_45
    iget-object v2, v1, Lorg/chromium/chrome/browser/infobar/InfoBar;->B:Landroid/view/View;

    if-nez v2, :cond_46

    goto :goto_25

    .line 124
    :cond_46
    iput-object v8, v1, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->I:Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;

    .line 125
    check-cast v2, LUf0;

    invoke-virtual {v1, v2, v8}, Lorg/chromium/chrome/browser/infobar/DownloadProgressInfoBar;->a(LUf0;Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;)V

    :goto_25
    if-ne v12, v3, :cond_49

    .line 126
    iget-object v1, v0, Lu80;->F:Ljava/lang/Runnable;

    if-eqz v1, :cond_47

    const/4 v2, 0x1

    goto :goto_27

    .line 127
    :cond_47
    iget-object v1, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->j:Ls80;

    iget v1, v1, Ls80;->a:I

    if-ne v1, v3, :cond_48

    const/4 v2, 0x2

    goto :goto_27

    :cond_48
    const/4 v2, 0x6

    goto :goto_27

    :cond_49
    const/4 v1, 0x2

    if-ne v12, v1, :cond_50

    .line 128
    iget-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_4e

    if-eq v2, v1, :cond_4c

    const/4 v1, 0x5

    if-eq v2, v1, :cond_4a

    goto :goto_26

    .line 129
    :cond_4a
    iget-object v1, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->j:Ls80;

    iget v1, v1, Ls80;->c:I

    if-ne v1, v3, :cond_4b

    const/4 v2, 0x4

    goto :goto_27

    :cond_4b
    const/16 v2, 0x8

    goto :goto_27

    .line 130
    :cond_4c
    iget-object v1, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->j:Ls80;

    iget v1, v1, Ls80;->d:I

    if-ne v1, v3, :cond_4d

    const/4 v2, 0x3

    goto :goto_27

    :cond_4d
    const/4 v2, 0x7

    goto :goto_27

    :cond_4e
    const/4 v1, 0x5

    .line 131
    iget-object v2, v8, Lorg/chromium/chrome/browser/download/DownloadInfoBarController$DownloadProgressInfoBarData;->j:Ls80;

    iget v2, v2, Ls80;->b:I

    if-ne v2, v3, :cond_4f

    const/4 v2, 0x5

    goto :goto_27

    :cond_4f
    const/16 v2, 0x9

    goto :goto_27

    :cond_50
    :goto_26
    const/4 v2, -0x1

    :goto_27
    const/16 v1, 0xa

    const-string v3, "Android.Download.InfoBar.Shown"

    .line 132
    invoke-static {v3, v2, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 133
    invoke-static {v3, v4, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 134
    :cond_51
    :goto_28
    iput v12, v0, Lu80;->E:I

    :goto_29
    return-void
.end method

.method public final varargs a([Ljava/lang/Integer;)V
    .locals 4

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lu80;->A:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LbU0;

    .line 146
    iget-object v3, p0, Lu80;->A:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/components/offline_items_collection/OfflineItem;

    if-nez v3, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iget v3, v3, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LbU0;

    .line 149
    iget-object v1, p0, Lu80;->A:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lu80;->D:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final a(Lorg/chromium/components/offline_items_collection/OfflineItem;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DownloadProgressInfoBar"

    const-string v2, "speeding_up_message_enabled"

    .line 1
    invoke-static {v1, v2, v0}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->C:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .line 5
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    return-object v1
.end method

.method public final b(Lorg/chromium/components/offline_items_collection/OfflineItem;)Z
    .locals 3

    .line 1
    iget-boolean v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->R:Z

    iget-boolean v2, p0, Lu80;->x:Z

    if-ne v0, v2, :cond_3

    iget-boolean v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->B:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->Y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    invoke-static {v0}, LcU0;->a(LbU0;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->N:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object p1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->O:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->shouldAutoOpenDownload(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final c()Ls80;
    .locals 5

    .line 5
    new-instance v0, Ls80;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls80;-><init>(Lr80;)V

    .line 6
    iget-object v1, p0, Lu80;->A:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/components/offline_items_collection/OfflineItem;

    .line 7
    iget v2, v2, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget v2, v0, Ls80;->c:I

    add-int/2addr v2, v3

    iput v2, v0, Ls80;->c:I

    goto :goto_0

    .line 9
    :cond_2
    iget v2, v0, Ls80;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Ls80;->d:I

    goto :goto_0

    .line 10
    :cond_3
    iget v2, v0, Ls80;->b:I

    add-int/2addr v2, v3

    iput v2, v0, Ls80;->b:I

    goto :goto_0

    .line 11
    :cond_4
    iget v2, v0, Ls80;->a:I

    add-int/2addr v2, v3

    iput v2, v0, Ls80;->a:I

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public c(LbU0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu80;->B:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu80;->A:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lu80;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v1, v1, v0}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;ZZZ)V

    return-void
.end method
