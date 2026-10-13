.class public final LPt;
.super Lrt;
.source "PG"


# instance fields
.field public final synthetic r:Lcom/google/android/gms/location/LocationRequest;

.field public final synthetic s:Lqu;

.field public final synthetic t:Landroid/os/Looper;


# direct methods
.method public constructor <init>(LHm;Lcom/google/android/gms/location/LocationRequest;Lqu;Landroid/os/Looper;)V
    .locals 0

    iput-object p2, p0, LPt;->r:Lcom/google/android/gms/location/LocationRequest;

    iput-object p3, p0, LPt;->s:Lqu;

    iput-object p4, p0, LPt;->t:Landroid/os/Looper;

    invoke-direct {p0, p1}, Lrt;-><init>(LHm;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lpm;)V
    .locals 6

    check-cast p1, LEt;

    new-instance v0, Lst;

    invoke-direct {v0, p0}, Lst;-><init>(LTm;)V

    iget-object v1, p0, LPt;->r:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, LPt;->s:Lqu;

    iget-object v3, p0, LPt;->t:Landroid/os/Looper;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v3, v4}, Lxp;->b(ZLjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 2
    :goto_1
    const-class v4, Lqu;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Listener must not be null"

    .line 3
    invoke-static {v2, v5}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Looper must not be null"

    invoke-static {v3, v5}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Listener type must not be null"

    invoke-static {v4, v5}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lgn;

    invoke-direct {v5, v3, v2, v4}, Lgn;-><init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v1, v5, v0}, LEt;->a(Lcom/google/android/gms/location/LocationRequest;Lgn;Lut;)V

    return-void
.end method
