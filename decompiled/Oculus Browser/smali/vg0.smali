.class public Lvg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lwg0;


# direct methods
.method public constructor <init>(Lwg0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvg0;->w:Lwg0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvg0;->w:Lwg0;

    .line 2
    invoke-virtual {v0}, Lwg0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lvg0;->w:Lwg0;

    iget-object v0, v0, Lwg0;->A:Lxg0;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lxg0;->a:Z

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lxg0;->a(Z)V

    return-void
.end method
