.class public final Lso;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFm;
.implements LGm;


# instance fields
.field public final a:Lym;

.field public final b:Z

.field public c:Lto;


# direct methods
.method public constructor <init>(Lym;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lso;->a:Lym;

    iput-boolean p2, p0, Lso;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lso;->c:Lto;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(I)V
    .locals 1

    invoke-virtual {p0}, Lso;->a()V

    iget-object v0, p0, Lso;->c:Lto;

    invoke-interface {v0, p1}, LFm;->a(I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lso;->a()V

    iget-object v0, p0, Lso;->c:Lto;

    invoke-interface {v0, p1}, LFm;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-virtual {p0}, Lso;->a()V

    iget-object v0, p0, Lso;->c:Lto;

    iget-object v1, p0, Lso;->a:Lym;

    iget-boolean v2, p0, Lso;->b:Z

    invoke-interface {v0, p1, v1, v2}, Lto;->a(Lcom/google/android/gms/common/ConnectionResult;Lym;Z)V

    return-void
.end method
