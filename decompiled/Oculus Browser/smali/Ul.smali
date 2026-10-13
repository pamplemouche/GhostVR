.class public final LUl;
.super LCj;
.source "PG"


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Lcom/google/android/gms/cast/zzag;


# direct methods
.method public constructor <init>(LHm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, LUl;->r:Ljava/lang/String;

    iput-object p3, p0, LUl;->s:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, LUl;->t:Lcom/google/android/gms/cast/zzag;

    invoke-direct {p0, p1}, LCj;-><init>(LHm;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lpm;)V
    .locals 0

    .line 14
    check-cast p1, Lss;

    invoke-virtual {p0, p1}, LUl;->a(Lss;)V

    return-void
.end method

.method public final a(Lss;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, LUl;->r:Ljava/lang/String;

    iget-object v1, p0, LUl;->s:Ljava/lang/String;

    iget-object v2, p0, LUl;->t:Lcom/google/android/gms/cast/zzag;

    .line 2
    invoke-virtual {p1, p0}, Lss;->a(LTm;)V

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/google/android/gms/cast/zzag;

    invoke-direct {v2}, Lcom/google/android/gms/cast/zzag;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, LCs;

    .line 5
    invoke-virtual {p1}, Lss;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    check-cast v3, LDs;

    .line 7
    invoke-virtual {v3}, LXr;->A()Landroid/os/Parcel;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-static {p1, v2}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 v0, 0xe

    .line 11
    invoke-virtual {v3, v0, p1}, LXr;->c(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x7e0

    .line 12
    invoke-virtual {p1, v0}, Lss;->a(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 13
    :catch_0
    invoke-virtual {p0}, Lms;->g()V

    return-void
.end method
