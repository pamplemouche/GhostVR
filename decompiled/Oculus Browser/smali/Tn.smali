.class public final LTn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic x:LVm;


# direct methods
.method public constructor <init>(LVm;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, LTn;->x:LVm;

    iput-object p2, p0, LTn;->w:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LTn;->x:LVm;

    iget-object v1, p0, LTn;->w:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, LVm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
