.class public final LWt;
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
    .locals 12

    invoke-static {p1}, LBp;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    packed-switch v2, :pswitch_data_0

    .line 2
    invoke-static {p1, v1}, LBp;->n(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v1}, LBp;->g(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v1}, LBp;->c(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, LBp;->i(Landroid/os/Parcel;I)F

    move-result v9

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v1}, LBp;->c(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_4
    sget-object v2, Lcom/google/android/gms/internal/vision/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, LBp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/vision/zzn;

    goto :goto_0

    :pswitch_5
    sget-object v2, Lcom/google/android/gms/internal/vision/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, LBp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/vision/zzn;

    goto :goto_0

    :pswitch_6
    sget-object v2, Lcom/google/android/gms/internal/vision/zzx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, LBp;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lcom/google/android/gms/internal/vision/zzx;

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, LBp;->f(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/internal/vision/zzac;

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/vision/zzac;-><init>([Lcom/google/android/gms/internal/vision/zzx;Lcom/google/android/gms/internal/vision/zzn;Lcom/google/android/gms/internal/vision/zzn;Ljava/lang/String;FLjava/lang/String;Z)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
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

    new-array p1, p1, [Lcom/google/android/gms/internal/vision/zzac;

    return-object p1
.end method
