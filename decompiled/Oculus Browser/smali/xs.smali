.class public final Lxs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lss;

.field public final synthetic x:Lcom/google/android/gms/internal/cast/zzcd;


# direct methods
.method public constructor <init>(Lss;Lcom/google/android/gms/internal/cast/zzcd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxs;->w:Lss;

    iput-object p2, p0, Lxs;->x:Lcom/google/android/gms/internal/cast/zzcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxs;->w:Lss;

    iget-object v1, p0, Lxs;->x:Lcom/google/android/gms/internal/cast/zzcd;

    invoke-static {v0, v1}, Lss;->a(Lss;Lcom/google/android/gms/internal/cast/zzcd;)V

    return-void
.end method
