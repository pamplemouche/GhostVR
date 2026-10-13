.class public final synthetic Lob0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJx;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lob0;->a:Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 12

    iget-object v11, p0, Lob0;->a:Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-wide v0, v11, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldw;

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    iget-wide v2, v0, Ldw;->c:J

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 6
    iget-wide v1, v11, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->a:J

    .line 7
    iget-object v3, v0, Ldw;->a:Ljava/lang/String;

    .line 8
    iget-object v4, v0, Ldw;->b:Ljava/lang/String;

    .line 9
    iget-object v7, v0, Ldw;->d:Ljava/lang/String;

    .line 10
    iget-object v8, v0, Ldw;->e:Ljava/lang/String;

    .line 11
    iget-object v9, v0, Ldw;->f:Ljava/lang/String;

    .line 12
    iget-object v10, v0, Ldw;->g:Ljava/lang/String;

    move-wide v0, v1

    move-object v2, v11

    .line 13
    invoke-static/range {v0 .. v10}, LJ/N;->MfN7x4DK(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-wide v0, v11, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;->a:J

    .line 15
    invoke-static {v0, v1, v11}, LJ/N;->MxzlwGPP(JLjava/lang/Object;)V

    :goto_1
    return-void
.end method
