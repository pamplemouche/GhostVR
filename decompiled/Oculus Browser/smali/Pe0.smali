.class public LPe0;
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
    iput-object p1, p0, LPe0;->a:LKe0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILorg/chromium/base/Callback;)V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    .line 2
    iget-object v9, v6, LPe0;->a:LKe0;

    .line 3
    new-instance v7, LOe0;

    move-object v0, v7

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, LOe0;-><init>(LPe0;Lorg/chromium/base/Callback;Ljava/lang/String;J)V

    .line 4
    iget-wide v0, v9, LKe0;->a:J

    new-instance v13, LJe0;

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v13, v7, v2, v3}, LJe0;-><init>(Lorg/chromium/base/Callback;II)V

    const/4 v10, 0x0

    move-wide v7, v0

    move-object v11, p1

    move-object/from16 v12, p2

    .line 5
    invoke-static/range {v7 .. v13}, LJ/N;->MVa6KqKn(JLjava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
