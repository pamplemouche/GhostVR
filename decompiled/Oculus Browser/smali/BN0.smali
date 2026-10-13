.class public LBN0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

.field public b:LnU;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LBN0;->a:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    .line 3
    new-instance p1, LnU;

    invoke-direct {p1}, LnU;-><init>()V

    iput-object p1, p0, LBN0;->b:LnU;

    .line 4
    sget-object v0, LqN0;->a:Lorg/chromium/base/Callback;

    .line 5
    invoke-virtual {p1, v0}, LnU;->a(Lorg/chromium/base/Callback;)V

    .line 6
    iget-object p1, p0, LBN0;->a:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    new-instance v0, LvN0;

    invoke-direct {v0, p0}, LvN0;-><init>(LBN0;)V

    .line 7
    iget-wide v1, p1, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->b:J

    .line 8
    invoke-static {v1, v2, p1, v0}, LJ/N;->M6Rdk6FF(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(JLjava/util/List;)I
    .locals 4

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LkO0;

    .line 7
    iget-wide v1, v1, LkO0;->a:J

    cmp-long v3, p0, v1

    if-gtz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(JJ)LnU;
    .locals 10

    .line 1
    new-instance v7, LnU;

    invoke-direct {v7}, LnU;-><init>()V

    .line 2
    iget-object v8, p0, LBN0;->b:LnU;

    new-instance v9, LyN0;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, LyN0;-><init>(LBN0;JJLnU;)V

    sget-object p1, LzN0;->a:Lorg/chromium/base/Callback;

    .line 3
    invoke-virtual {v8, v9}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 4
    invoke-virtual {v8, p1}, LnU;->a(Lorg/chromium/base/Callback;)V

    return-object v7
.end method
