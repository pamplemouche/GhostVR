.class public Lcom/oculus/horizon/store/StoreInAppRentalModel;
.super Lcom/oculus/horizon/store/StoreItemModel;
.source "StoreInAppRentalModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/StoreInAppRentalModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final format:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final isOwnedByCurrentUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/oculus/horizon/store/StoreInAppRentalModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/StoreInAppRentalModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/StoreInAppRentalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/oculus/horizon/store/StoreItemModel;-><init>(Landroid/os/Parcel;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalModel;->isOwnedByCurrentUser:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalModel;->format:Ljava/lang/String;

    .line 54
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;ZJLcom/oculus/model/StoreRoadblockModel;Ljava/lang/String;)V
    .locals 17
    .param p11    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/oculus/model/StoreRoadblockModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    .line 32
    invoke-direct/range {v2 .. v16}, Lcom/oculus/horizon/store/StoreItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;)V

    .line 46
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->isOwnedByCurrentUser:Z

    .line 47
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->format:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/store/StoreItemModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalModel;->isOwnedByCurrentUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalModel;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
