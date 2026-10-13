.class public Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1}, LJ/N;->MRzLhE1p(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;->a:J

    return-void
.end method

.method public static onCachedDataCleared()V
    .locals 2

    .line 1
    sget-object v0, Lsb0;->c:LLa0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lsb0;->a()V

    .line 3
    :cond_0
    sget-object v0, Lsb0;->c:LLa0;

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, LLa0;->a(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, LLa0;->a(Z)V

    :cond_1
    return-void
.end method

.method public static onHistoryDeleted()V
    .locals 2

    .line 1
    sget-object v0, Lsb0;->c:LLa0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lsb0;->a()V

    .line 3
    :cond_0
    sget-object v0, Lsb0;->c:LLa0;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, LLa0;->a(I)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, LLa0;->a(Z)V

    :cond_1
    return-void
.end method
