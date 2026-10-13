.class public Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public static createHistoryItemAndAddToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[JZ)V
    .locals 9

    .line 1
    new-instance v8, Lxe0;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lxe0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[JZ)V

    move-object v0, p0

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;->b:Z

    return-void

    .line 3
    :cond_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;->a:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;->b:Z

    const-wide/16 v0, 0x0

    .line 5
    invoke-static {v0, v1, p0}, LJ/N;->MVl9wW5M(JLjava/lang/Object;)V

    return-void
.end method

.method public hasOtherFormsOfBrowsingData(Z)V
    .locals 0

    return-void
.end method

.method public onHistoryDeleted()V
    .locals 0

    return-void
.end method

.method public onQueryHistoryComplete(Ljava/util/List;Z)V
    .locals 0

    return-void
.end method

.method public onRemoveComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;->a:Z

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;->a()V

    :cond_0
    return-void
.end method

.method public onRemoveFailed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;->a:Z

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/history/BrowsingHistoryBridge;->a()V

    :cond_0
    return-void
.end method
