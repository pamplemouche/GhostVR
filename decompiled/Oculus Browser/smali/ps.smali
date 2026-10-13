.class public final Lps;
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
    .locals 6

    .line 1
    new-instance p4, Lqs;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lqs;-><init>(Landroid/content/Context;Landroid/os/Looper;LVo;LFm;LGm;)V

    return-object p4
.end method
