.class public LNo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKo;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V
    .locals 0

    iput-object p1, p0, LNo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LNo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Lap;

    .line 1
    iget-object v1, v1, Lap;->B:Ljava/util/Set;

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Llp;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, LNo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->t:LIo;

    if-eqz v0, :cond_1

    .line 4
    check-cast v0, LGp;

    .line 5
    iget-object v0, v0, LGp;->a:LGm;

    invoke-interface {v0, p1}, LGm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    return-void
.end method
