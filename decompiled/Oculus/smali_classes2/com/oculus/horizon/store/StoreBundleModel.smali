.class public Lcom/oculus/horizon/store/StoreBundleModel;
.super Lcom/oculus/horizon/store/StoreItemModel;
.source "StoreBundleModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/StoreBundleModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isOwnedByCurrentUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/oculus/horizon/store/StoreBundleModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/StoreBundleModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/StoreBundleModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1}, Lcom/oculus/horizon/store/StoreItemModel;-><init>(Landroid/os/Parcel;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreBundleModel;->isOwnedByCurrentUser:Z

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;ZJLcom/oculus/model/StoreRoadblockModel;)V
    .locals 17
    .param p11    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/oculus/model/StoreRoadblockModel;
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

    .line 31
    invoke-direct/range {v2 .. v16}, Lcom/oculus/horizon/store/StoreItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;)V

    .line 45
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oculus/horizon/store/StoreBundleModel;->isOwnedByCurrentUser:Z

    .line 46
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/store/StoreItemModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreBundleModel;->isOwnedByCurrentUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
