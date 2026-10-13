.class public Lcom/oculus/horizon/store/StoreItemModel;
.super Ljava/lang/Object;
.source "StoreItemModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/StoreItemModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final categoryId:Ljava/lang/String;

.field public final categoryName:Ljava/lang/String;

.field public final countDownTimerEndTime:J

.field public final imageSource:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final itemId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final price:Ljava/lang/String;

.field public final promoBenfit:Ljava/lang/String;

.field public final roadblockModel:Lcom/oculus/model/StoreRoadblockModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final squareImageSource:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final storeSection:Lcom/oculus/horizon/store/StoreSection;

.field public final strikethroughPrice:Ljava/lang/String;

.field public final styleTheme:Lcom/oculus/model/StyleTheme;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/oculus/horizon/store/StoreItemModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/StoreItemModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/StoreItemModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->itemId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->imageSource:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->squareImageSource:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->price:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->strikethroughPrice:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->promoBenfit:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->categoryId:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->categoryName:Ljava/lang/String;

    .line 72
    const-class v0, Lcom/oculus/horizon/store/StoreSection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreSection;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->storeSection:Lcom/oculus/horizon/store/StoreSection;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->countDownTimerEndTime:J

    .line 76
    const-class v0, Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/StoreRoadblockModel;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    .line 77
    return-void

    .line 74
    :cond_0
    invoke-static {v0}, Lcom/oculus/model/StyleTheme;->valueOf(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;)V
    .locals 0
    .param p11    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/oculus/model/StoreRoadblockModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreItemModel;->itemId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreItemModel;->imageSource:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/oculus/horizon/store/StoreItemModel;->squareImageSource:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/oculus/horizon/store/StoreItemModel;->price:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/oculus/horizon/store/StoreItemModel;->strikethroughPrice:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcom/oculus/horizon/store/StoreItemModel;->promoBenfit:Ljava/lang/String;

    .line 54
    iput-object p8, p0, Lcom/oculus/horizon/store/StoreItemModel;->categoryId:Ljava/lang/String;

    .line 55
    iput-object p9, p0, Lcom/oculus/horizon/store/StoreItemModel;->categoryName:Ljava/lang/String;

    .line 56
    iput-object p10, p0, Lcom/oculus/horizon/store/StoreItemModel;->storeSection:Lcom/oculus/horizon/store/StoreSection;

    .line 57
    iput-object p11, p0, Lcom/oculus/horizon/store/StoreItemModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 58
    iput-wide p12, p0, Lcom/oculus/horizon/store/StoreItemModel;->countDownTimerEndTime:J

    .line 59
    iput-object p14, p0, Lcom/oculus/horizon/store/StoreItemModel;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->imageSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->squareImageSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->strikethroughPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->promoBenfit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->storeSection:Lcom/oculus/horizon/store/StoreSection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-wide v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->countDownTimerEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    invoke-virtual {v0}, Lcom/oculus/model/StyleTheme;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
