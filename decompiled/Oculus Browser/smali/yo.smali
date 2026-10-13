.class public final Lyo;
.super LDm;
.source "PG"


# instance fields
.field public final i:Lwm;

.field public final j:Lso;

.field public final k:LVo;

.field public final l:Lom;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lym;Landroid/os/Looper;Lwm;Lso;LVo;Lom;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LDm;-><init>(Landroid/content/Context;Lym;Landroid/os/Looper;)V

    iput-object p4, p0, Lyo;->i:Lwm;

    iput-object p5, p0, Lyo;->j:Lso;

    iput-object p6, p0, Lyo;->k:LVo;

    iput-object p7, p0, Lyo;->l:Lom;

    iget-object p1, p0, LDm;->h:LYm;

    .line 1
    iget-object p1, p1, LYm;->m:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Handler;)Lco;
    .locals 3

    new-instance v0, Lco;

    iget-object v1, p0, Lyo;->k:LVo;

    iget-object v2, p0, Lyo;->l:Lom;

    invoke-direct {v0, p1, p2, v1, v2}, Lco;-><init>(Landroid/content/Context;Landroid/os/Handler;LVo;Lom;)V

    return-object v0
.end method

.method public final a(Landroid/os/Looper;LVm;)Lwm;
    .locals 0

    iget-object p1, p0, Lyo;->j:Lso;

    .line 1
    iput-object p2, p1, Lso;->c:Lto;

    .line 2
    iget-object p1, p0, Lyo;->i:Lwm;

    return-object p1
.end method
