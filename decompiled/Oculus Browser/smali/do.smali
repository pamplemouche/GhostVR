.class public final Ldo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lco;


# direct methods
.method public constructor <init>(Lco;)V
    .locals 0

    iput-object p1, p0, Ldo;->w:Lco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ldo;->w:Lco;

    .line 1
    iget-object v0, v0, Lco;->g:Lgo;

    .line 2
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    check-cast v0, LXm;

    invoke-virtual {v0, v1}, LXm;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
