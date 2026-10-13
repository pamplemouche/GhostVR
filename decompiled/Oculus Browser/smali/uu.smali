.class public final Luu;
.super Lom;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lom;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;LVo;Ljava/lang/Object;LFm;LGm;)Lwm;
    .locals 7

    new-instance p4, LEt;

    const-string v5, "locationServices"

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, LEt;-><init>(Landroid/content/Context;Landroid/os/Looper;LFm;LGm;Ljava/lang/String;LVo;)V

    return-object p4
.end method
