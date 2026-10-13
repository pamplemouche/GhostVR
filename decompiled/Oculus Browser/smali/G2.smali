.class public abstract LG2;
.super LE2;
.source "PG"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:LY2;


# direct methods
.method public constructor <init>(LD2;)V
    .locals 2

    .line 1
    iget-object v0, p1, LD2;->x:Landroid/os/Handler;

    .line 2
    invoke-direct {p0}, LE2;-><init>()V

    .line 3
    new-instance v1, LY2;

    invoke-direct {v1}, LY2;-><init>()V

    iput-object v1, p0, LG2;->d:LY2;

    .line 4
    iput-object p1, p0, LG2;->a:Landroid/app/Activity;

    .line 5
    iput-object p1, p0, LG2;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 6
    iput-object v0, p0, LG2;->c:Landroid/os/Handler;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handler == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a(Lz2;Landroid/content/Intent;ILandroid/os/Bundle;)V
.end method

.method public abstract b()V
.end method
