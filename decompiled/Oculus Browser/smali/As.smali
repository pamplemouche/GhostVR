.class public final LAs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, LBp;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v10, v1

    move-object v12, v10

    move-wide v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    packed-switch v2, :pswitch_data_0

    .line 4
    invoke-static {p1, v1}, LBp;->n(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/cast/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    invoke-static {p1, v1, v2}, LBp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/gms/cast/zzad;

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-static {p1, v1}, LBp;->k(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_0

    .line 8
    :pswitch_2
    sget-object v2, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p1, v1, v2}, LBp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/cast/ApplicationMetadata;

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-static {p1, v1}, LBp;->k(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_0

    .line 11
    :pswitch_4
    invoke-static {p1, v1}, LBp;->g(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-static {p1, v1}, LBp;->h(Landroid/os/Parcel;I)D

    move-result-wide v6

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, v0}, LBp;->f(Landroid/os/Parcel;I)V

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/cast/zzcv;

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/cast/zzcv;-><init>(DZILcom/google/android/gms/cast/ApplicationMetadata;ILcom/google/android/gms/cast/zzad;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
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

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/internal/cast/zzcv;

    return-object p1
.end method
