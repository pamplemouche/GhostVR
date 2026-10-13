.class public final Lou;
.super Leu;
.source "PG"


# instance fields
.field public final f:Lcom/google/android/gms/internal/vision/zzaa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzaa;)V
    .locals 1

    const-string v0, "TextNativeHandle"

    invoke-direct {p0, p1, v0}, Leu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lou;->f:Lcom/google/android/gms/internal/vision/zzaa;

    invoke-virtual {p0}, Leu;->d()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic a(Llq;Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    const-string v0, "com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator"

    invoke-virtual {p1, v0}, Llq;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator"

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lju;

    if-eqz v2, :cond_1

    move-object p1, v1

    check-cast p1, Lju;

    goto :goto_0

    :cond_1
    new-instance v1, Lku;

    invoke-direct {v1, p1}, Lku;-><init>(Landroid/os/IBinder;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 1
    :cond_2
    new-instance v1, Leq;

    invoke-direct {v1, p2}, Leq;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lou;->f:Lcom/google/android/gms/internal/vision/zzaa;

    check-cast p1, Lku;

    .line 3
    invoke-virtual {p1}, LUt;->A()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v2, v1}, LXt;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v2, p2}, LXt;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v2}, LUt;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizer"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lhu;

    if-eqz v1, :cond_4

    check-cast v0, Lhu;

    goto :goto_1

    :cond_4
    new-instance v0, Liu;

    invoke-direct {v0, p2}, Liu;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Leu;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhu;

    check-cast v0, Liu;

    .line 1
    invoke-virtual {v0}, LUt;->A()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, LUt;->b(ILandroid/os/Parcel;)V

    return-void
.end method
