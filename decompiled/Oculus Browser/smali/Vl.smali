.class public final LVl;
.super LBs;
.source "PG"


# instance fields
.field public final synthetic r:Ljava/lang/String;


# direct methods
.method public constructor <init>(LHm;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, LVl;->r:Ljava/lang/String;

    invoke-direct {p0, p1}, LBs;-><init>(LHm;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lpm;)V
    .locals 0

    .line 15
    check-cast p1, Lss;

    invoke-virtual {p0, p1}, LVl;->a(Lss;)V

    return-void
.end method

.method public final a(Lss;)V
    .locals 4

    .line 1
    iget-object v0, p0, LVl;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x7d1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "IllegalArgument: sessionId cannot be null or empty"

    .line 3
    invoke-direct {p1, v2, v0, v3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(LLm;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, LVl;->r:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p0}, Lss;->b(LTm;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, LCs;

    .line 8
    invoke-virtual {p1}, Lss;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    check-cast v1, LDs;

    .line 10
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 12
    invoke-virtual {v1, v0, p1}, LXr;->c(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x7e0

    .line 13
    invoke-virtual {p1, v0}, Lss;->b(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 14
    :catch_0
    invoke-virtual {p0}, Lms;->g()V

    return-void
.end method
