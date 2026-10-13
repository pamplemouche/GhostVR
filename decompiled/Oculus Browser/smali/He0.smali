.class public LHe0;
.super LIe0;
.source "PG"


# instance fields
.field public a:LKe0;


# direct methods
.method public constructor <init>(LKe0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LIe0;-><init>()V

    .line 2
    iput-object p1, p0, LHe0;->a:LKe0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILorg/chromium/base/Callback;)V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2
    sget-object v9, LFW;->k:LFW;

    new-instance v10, LEe0;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, LEe0;-><init>(LHe0;Ljava/lang/String;Ljava/lang/String;IILorg/chromium/base/Callback;J)V

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v9, v10, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
