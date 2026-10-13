.class public Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public b:Z

.field public final c:LWT;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->c:LWT;

    .line 3
    iput-wide p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->b:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MjGj0xKY(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Lorg/chromium/chrome/browser/profiles/ProfileKey;

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 6
    invoke-static {p0}, LJ/N;->MspGcmXb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    return-object p0
.end method

.method public static create(J)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;-><init>(J)V

    return-object v0
.end method

.method public static createClientId(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/ClientId;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/ClientId;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/offlinepages/ClientId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createDeletedPageInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/DeletedPageInfo;
    .locals 7

    .line 1
    new-instance v6, Lorg/chromium/chrome/browser/offlinepages/DeletedPageInfo;

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/offlinepages/DeletedPageInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static createLoadUrlParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p0, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->f:Ljava/util/Map;

    const-string p0, ": "

    .line 7
    invoke-static {p1, p0, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    iput-object p0, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static createOfflinePageAndAddToList(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p15}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->createOfflinePageItem(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJLjava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createOfflinePageItem(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJLjava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;
    .locals 17

    .line 1
    new-instance v16, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJLjava/lang/String;)V

    return-object v16
.end method

.method public static getEncodedOriginApp(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lgn0;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-direct {v0, v1, p0}, Lgn0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 4
    invoke-virtual {v0}, Lgn0;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public offlinePageAdded(Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->c:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfn0;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public offlinePageBridgeDestroyed()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->b:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->c:LWT;

    invoke-virtual {v0}, LWT;->clear()V

    return-void
.end method

.method public offlinePageDeleted(Lorg/chromium/chrome/browser/offlinepages/DeletedPageInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->c:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfn0;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public offlinePageModelLoaded()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->b:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->c:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfn0;

    const/4 v0, 0x0

    .line 3
    throw v0
.end method
