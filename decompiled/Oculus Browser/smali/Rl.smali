.class public final LRl;
.super Lom;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lom;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;LVo;Ljava/lang/Object;LFm;LGm;)Lwm;
    .locals 13

    .line 1
    move-object/from16 v0, p4

    check-cast v0, Lzj;

    const-string v1, "Setting the API options is required."

    .line 2
    invoke-static {v0, v1}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lss;

    iget-object v6, v0, Lzj;->a:Lcom/google/android/gms/cast/CastDevice;

    .line 4
    iget v2, v0, Lzj;->d:I

    int-to-long v7, v2

    .line 5
    iget-object v9, v0, Lzj;->b:LAj;

    iget-object v10, v0, Lzj;->c:Landroid/os/Bundle;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lss;-><init>(Landroid/content/Context;Landroid/os/Looper;LVo;Lcom/google/android/gms/cast/CastDevice;JLAj;Landroid/os/Bundle;LFm;LGm;)V

    return-object v1
.end method
