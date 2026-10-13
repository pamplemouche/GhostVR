.class public LVN0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LnU;

.field public b:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LVN0;->b:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    .line 3
    new-instance p1, LnU;

    invoke-direct {p1}, LnU;-><init>()V

    iput-object p1, p0, LVN0;->a:LnU;

    .line 4
    iget-object p1, p0, LVN0;->b:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    new-instance v0, LPN0;

    invoke-direct {v0, p0}, LPN0;-><init>(LVN0;)V

    .line 5
    iget-wide v1, p1, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->b:J

    .line 6
    invoke-static {v1, v2, p1, v0}, LJ/N;->MiNnjkrf(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, LVN0;->a:LnU;

    sget-object v0, LQN0;->a:Lorg/chromium/base/Callback;

    .line 8
    invoke-virtual {p1, v0}, LnU;->a(Lorg/chromium/base/Callback;)V

    return-void
.end method
