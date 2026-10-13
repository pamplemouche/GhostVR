.class public final synthetic LzE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final w:LAE0;


# direct methods
.method public constructor <init>(LAE0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LzE0;->w:LAE0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, LzE0;->w:LAE0;

    .line 1
    iget-object p1, p1, LAE0;->D0:LBE0;

    check-cast p1, LtE0;

    .line 2
    iget-object p2, p1, LtE0;->a:LuE0;

    .line 3
    invoke-virtual {p2}, LuE0;->d()V

    .line 4
    iget-object p2, p1, LtE0;->a:LuE0;

    .line 5
    iget-object v0, p2, LuE0;->k:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, LsE0;

    invoke-direct {v0, p2}, LsE0;-><init>(LuE0;)V

    iput-object v0, p2, LuE0;->k:Ljava/lang/Runnable;

    .line 7
    :cond_0
    iget-object v0, p2, LuE0;->h:Landroid/os/Handler;

    iget-object p2, p2, LuE0;->k:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iget-object p1, p1, LtE0;->a:LuE0;

    .line 9
    iget-object p2, p1, LuE0;->g:LCE0;

    new-instance v0, LrE0;

    invoke-direct {v0, p1}, LrE0;-><init>(LuE0;)V

    .line 10
    invoke-virtual {p2}, LCE0;->a()V

    .line 11
    new-instance p1, LwE0;

    invoke-direct {p1}, LwE0;-><init>()V

    .line 12
    iput-object v0, p1, LwE0;->D0:LxE0;

    const-string v0, "ConfirmSyncTimeoutDialog"

    .line 13
    invoke-virtual {p2, p1, v0}, LCE0;->a(Ls2;Ljava/lang/String;)V

    return-void
.end method
