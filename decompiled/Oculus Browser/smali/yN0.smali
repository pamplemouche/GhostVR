.class public final synthetic LyN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LBN0;

.field public final b:J

.field public final c:J

.field public final d:LnU;


# direct methods
.method public constructor <init>(LBN0;JJLnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LyN0;->a:LBN0;

    iput-wide p2, p0, LyN0;->b:J

    iput-wide p4, p0, LyN0;->c:J

    iput-object p6, p0, LyN0;->d:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, LyN0;->a:LBN0;

    iget-wide v9, v0, LyN0;->b:J

    iget-wide v11, v0, LyN0;->c:J

    iget-object v8, v0, LyN0;->d:LnU;

    move-object/from16 v7, p1

    check-cast v7, Ljava/util/List;

    .line 1
    iget-object v15, v1, LBN0;->a:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    new-instance v20, LtN0;

    move-object/from16 v2, v20

    move-wide v3, v9

    move-wide v5, v11

    invoke-direct/range {v2 .. v8}, LtN0;-><init>(JJLjava/util/List;LnU;)V

    if-eqz v15, :cond_0

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v16

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v18

    .line 4
    iget-wide v13, v15, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->b:J

    .line 5
    invoke-static/range {v13 .. v20}, LJ/N;->Mr1dopkU(JLjava/lang/Object;JJLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 6
    throw v1
.end method
