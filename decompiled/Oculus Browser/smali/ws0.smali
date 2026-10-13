.class public final Lws0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrs0;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcs0;


# direct methods
.method public constructor <init>(Lcs0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lws0;->a:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lws0;->b:Lcs0;

    return-void
.end method
