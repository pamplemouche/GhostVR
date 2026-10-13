.class public final Lzj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrm;


# instance fields
.field public final a:Lcom/google/android/gms/cast/CastDevice;

.field public final b:LAj;

.field public final c:Landroid/os/Bundle;

.field public final d:I


# direct methods
.method public synthetic constructor <init>(Lyj;LRl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lyj;->a:Lcom/google/android/gms/cast/CastDevice;

    iput-object p2, p0, Lzj;->a:Lcom/google/android/gms/cast/CastDevice;

    .line 3
    iget-object p2, p1, Lyj;->b:LAj;

    iput-object p2, p0, Lzj;->b:LAj;

    .line 4
    iget p2, p1, Lyj;->c:I

    .line 5
    iput p2, p0, Lzj;->d:I

    .line 6
    iget-object p1, p1, Lyj;->d:Landroid/os/Bundle;

    .line 7
    iput-object p1, p0, Lzj;->c:Landroid/os/Bundle;

    return-void
.end method
