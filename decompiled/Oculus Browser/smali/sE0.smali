.class public final synthetic LsE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LuE0;


# direct methods
.method public constructor <init>(LuE0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LsE0;->w:LuE0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LsE0;->w:LuE0;

    .line 1
    iget-object v1, v0, LuE0;->g:LCE0;

    new-instance v2, LtE0;

    invoke-direct {v2, v0}, LtE0;-><init>(LuE0;)V

    .line 2
    invoke-virtual {v1}, LCE0;->a()V

    .line 3
    new-instance v0, LAE0;

    invoke-direct {v0}, LAE0;-><init>()V

    .line 4
    iput-object v2, v0, LAE0;->D0:LBE0;

    const-string v2, "ConfirmSyncProgressDialog"

    .line 5
    invoke-virtual {v1, v0, v2}, LCE0;->a(Ls2;Ljava/lang/String;)V

    return-void
.end method
