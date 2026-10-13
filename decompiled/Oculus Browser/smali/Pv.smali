.class public final LPv;
.super Leu;
.source "PG"


# instance fields
.field public final f:Lcom/google/android/gms/vision/face/internal/client/zzc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/zzc;)V
    .locals 1

    const-string v0, "FaceNativeHandle"

    invoke-direct {p0, p1, v0}, Leu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, LPv;->f:Lcom/google/android/gms/vision/face/internal/client/zzc;

    invoke-virtual {p0}, Leu;->d()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic a(Llq;Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    const-string v0, "com.google.android.gms.vision.face.ChimeraNativeFaceDetectorCreator"

    invoke-virtual {p1, v0}, Llq;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator"

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, LUv;

    if-eqz v2, :cond_1

    move-object p1, v1

    check-cast p1, LUv;

    goto :goto_0

    :cond_1
    new-instance v1, LVv;

    invoke-direct {v1, p1}, LVv;-><init>(Landroid/os/IBinder;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 1
    :cond_2
    new-instance v1, Leq;

    invoke-direct {v1, p2}, Leq;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, LPv;->f:Lcom/google/android/gms/vision/face/internal/client/zzc;

    check-cast p1, LVv;

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
    const-string v0, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LSv;

    if-eqz v1, :cond_4

    check-cast v0, LSv;

    goto :goto_1

    :cond_4
    new-instance v0, LTv;

    invoke-direct {v0, p2}, LTv;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final a(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/vision/zzk;)[LMv;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Leu;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [LMv;

    return-object v0

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Leq;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Leq;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Leu;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LSv;

    check-cast v2, LTv;

    .line 6
    invoke-virtual {v2}, LUt;->A()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v0}, LXt;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    move-object/from16 v0, p2

    invoke-static {v3, v0}, LXt;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v3}, LUt;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/vision/face/internal/client/FaceParcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    array-length v0, v2

    new-array v0, v0, [LMv;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    new-instance v16, LMv;

    iget v6, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->x:I

    new-instance v7, Landroid/graphics/PointF;

    iget v5, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->y:F

    iget v8, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->z:F

    invoke-direct {v7, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget v8, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->A:F

    iget v9, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->B:F

    iget v10, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->C:F

    iget v11, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->D:F

    iget-object v5, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->E:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    if-nez v5, :cond_1

    new-array v5, v1, [LOv;

    move-object/from16 p1, v2

    move-object v12, v5

    goto :goto_2

    :cond_1
    array-length v12, v5

    new-array v12, v12, [LOv;

    const/4 v13, 0x0

    :goto_1
    array-length v14, v5

    if-ge v13, v14, :cond_2

    aget-object v14, v5, v13

    new-instance v15, LOv;

    new-instance v1, Landroid/graphics/PointF;

    move-object/from16 p1, v2

    iget v2, v14, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->x:F

    move-object/from16 p2, v5

    iget v5, v14, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->y:F

    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget v2, v14, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->z:I

    invoke-direct {v15, v1, v2}, LOv;-><init>(Landroid/graphics/PointF;I)V

    aput-object v15, v12, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 p1, v2

    :goto_2
    iget v13, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->F:F

    iget v14, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->G:F

    iget v15, v4, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->H:F

    move-object/from16 v5, v16

    invoke-direct/range {v5 .. v15}, LMv;-><init>(ILandroid/graphics/PointF;FFFF[LOv;FFF)V

    aput-object v16, v0, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p1

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "FaceNativeHandle"

    const-string v2, "Could not call native face detector"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    new-array v0, v1, [LMv;

    return-object v0
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Leu;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSv;

    check-cast v0, LTv;

    .line 1
    invoke-virtual {v0}, LUt;->A()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, LUt;->b(ILandroid/os/Parcel;)V

    return-void
.end method
