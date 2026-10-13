.class public LON0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

.field public final b:LFN0;

.field public final c:LnU;

.field public d:LnU;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;LFN0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LON0;->a:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    .line 3
    iput-object p2, p0, LON0;->b:LFN0;

    .line 4
    new-instance p1, LnU;

    invoke-direct {p1}, LnU;-><init>()V

    iput-object p1, p0, LON0;->c:LnU;

    .line 5
    iget-object p1, p0, LON0;->a:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    new-instance p2, LIN0;

    invoke-direct {p2, p0}, LIN0;-><init>(LON0;)V

    .line 6
    iget-wide v0, p1, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->b:J

    new-instance v2, LWN0;

    invoke-direct {v2, p2}, LWN0;-><init>(Lorg/chromium/base/Callback;)V

    .line 7
    invoke-static {v0, v1, p1, v2}, LJ/N;->MggFWmhE(JLjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, LnU;->b(Ljava/lang/Object;)LnU;

    move-result-object p1

    iput-object p1, p0, LON0;->d:LnU;

    return-void
.end method
