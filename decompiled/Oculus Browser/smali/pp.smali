.class public abstract Lpp;
.super LSt;
.source "PG"

# interfaces
.implements Lqp;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, LSt;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const/4 p4, 0x0

    const-string v0, "onPostInitComplete can be called only once per call to getRemoteService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/internal/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, LTt;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/internal/ConnectionInfo;

    move-object v3, p0

    check-cast v3, LLo;

    .line 1
    iget-object v4, v3, LLo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const-string v5, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v4, v5}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lxp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, LLo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    iput-object p2, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->y:Lcom/google/android/gms/common/internal/ConnectionInfo;

    .line 3
    iget-object p2, p2, Lcom/google/android/gms/common/internal/ConnectionInfo;->w:Landroid/os/Bundle;

    .line 4
    iget-object v4, v3, LLo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v4, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, LLo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget v4, v3, LLo;->b:I

    invoke-virtual {v0, p1, v2, p2, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    iput-object p4, v3, LLo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, LTt;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 6
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string p4, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, p4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, LTt;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    move-object v3, p0

    check-cast v3, LLo;

    .line 8
    iget-object v4, v3, LLo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v4, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, LLo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget v4, v3, LLo;->b:I

    invoke-virtual {v0, p1, v2, p2, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    iput-object p4, v3, LLo;->a:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 9
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
