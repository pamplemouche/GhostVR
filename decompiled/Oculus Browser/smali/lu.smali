.class public final Llu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, LBp;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_0

    .line 2
    invoke-static {v0, v2}, LBp;->n(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v2}, LBp;->k(Landroid/os/Parcel;I)I

    move-result v16

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, LBp;->k(Landroid/os/Parcel;I)I

    move-result v15

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, LBp;->g(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v2}, LBp;->k(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, LBp;->c(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v2}, LBp;->i(Landroid/os/Parcel;I)F

    move-result v11

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, LBp;->c(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/google/android/gms/internal/vision/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LBp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/internal/vision/zzn;

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/google/android/gms/internal/vision/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LBp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/vision/zzn;

    goto :goto_0

    :pswitch_9
    sget-object v3, Lcom/google/android/gms/internal/vision/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LBp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/internal/vision/zzn;

    goto :goto_0

    :pswitch_a
    sget-object v3, Lcom/google/android/gms/internal/vision/zzac;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LBp;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [Lcom/google/android/gms/internal/vision/zzac;

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, LBp;->f(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/vision/zzt;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/google/android/gms/internal/vision/zzt;-><init>([Lcom/google/android/gms/internal/vision/zzac;Lcom/google/android/gms/internal/vision/zzn;Lcom/google/android/gms/internal/vision/zzn;Lcom/google/android/gms/internal/vision/zzn;Ljava/lang/String;FLjava/lang/String;IZII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/internal/vision/zzt;

    return-object p1
.end method
