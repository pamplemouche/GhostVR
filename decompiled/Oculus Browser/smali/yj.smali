.class public final Lyj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lcom/google/android/gms/cast/CastDevice;

.field public b:LAj;

.field public c:I

.field public d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastDevice;LAj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CastDevice parameter cannot be null"

    .line 2
    invoke-static {p1, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CastListener parameter cannot be null"

    .line 3
    invoke-static {p2, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lyj;->a:Lcom/google/android/gms/cast/CastDevice;

    .line 5
    iput-object p2, p0, Lyj;->b:LAj;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lyj;->c:I

    return-void
.end method
