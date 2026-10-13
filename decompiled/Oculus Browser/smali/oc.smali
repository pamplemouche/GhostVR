.class public Loc;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:Lrc;


# direct methods
.method public constructor <init>(Lrc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loc;->a:Lrc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Loc;->a:Lrc;

    .line 3
    iget-object v0, p1, Lrc;->u0:LDc;

    .line 4
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Lrc;->v0:Landroid/support/v7/widget/RecyclerView;

    .line 6
    new-instance v1, Lyc;

    invoke-direct {v1, v0}, Lyc;-><init>(Lvc;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->a(LBg;)V

    .line 8
    invoke-virtual {v0}, Lvc;->q()V

    :cond_1
    :goto_0
    return-void
.end method
