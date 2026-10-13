.class public Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static b:Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;


# instance fields
.field public final a:LWT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;->a:LWT;

    .line 3
    invoke-static {p0}, LJ/N;->M41yd4uo(Ljava/lang/Object;)J

    return-void
.end method


# virtual methods
.method public onURLsDeleted(Lorg/chromium/chrome/browser/history/HistoryDeletionInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/history/HistoryDeletionBridge;->a:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwe0;

    check-cast v0, LV30;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    :cond_1
    return-void
.end method
