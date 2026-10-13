.class public final LTl;
.super LCj;
.source "PG"


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method public constructor <init>(LHm;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
    .locals 0

    .line 1
    iput-object p2, p0, LTl;->r:Ljava/lang/String;

    iput-object p3, p0, LTl;->s:Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {p0, p1}, LCj;-><init>(LHm;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lpm;)V
    .locals 0

    .line 12
    check-cast p1, Lss;

    invoke-virtual {p0, p1}, LTl;->a(Lss;)V

    return-void
.end method

.method public final a(Lss;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, LTl;->r:Ljava/lang/String;

    iget-object v1, p0, LTl;->s:Lcom/google/android/gms/cast/LaunchOptions;

    .line 2
    invoke-virtual {p1, p0}, Lss;->a(LTm;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, LCs;

    .line 4
    invoke-virtual {p1}, Lss;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, LDs;

    .line 6
    invoke-virtual {v2}, LXr;->A()Landroid/os/Parcel;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-static {p1, v1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 v0, 0xd

    .line 9
    invoke-virtual {v2, v0, p1}, LXr;->c(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e0

    .line 10
    invoke-virtual {p1, v0}, Lss;->a(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 11
    :catch_0
    invoke-virtual {p0}, Lms;->g()V

    return-void
.end method
