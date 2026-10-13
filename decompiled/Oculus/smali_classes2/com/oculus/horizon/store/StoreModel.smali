.class public Lcom/oculus/horizon/store/StoreModel;
.super Ljava/lang/Object;
.source "StoreModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/StoreModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final footerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final storeSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/StoreSection;",
            ">;"
        }
    .end annotation
.end field

.field public final storeWideOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/StoreWideOfferModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final styleTheme:Lcom/oculus/model/StyleTheme;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/oculus/horizon/store/StoreModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/StoreModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/StoreModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    sget-object v1, Lcom/oculus/horizon/store/StoreSection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 40
    const-class v0, Lcom/oculus/horizon/store/StoreAssetMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreAssetMedia;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    .line 41
    const-class v0, Lcom/oculus/horizon/store/StoreAssetMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreAssetMedia;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->footerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->storeWideOffers:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->storeWideOffers:Ljava/util/List;

    const-class v1, Lcom/oculus/horizon/store/StoreWideOfferModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 44
    return-void

    .line 39
    :cond_0
    invoke-static {v0}, Lcom/oculus/model/StyleTheme;->valueOf(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/store/StoreAssetMedia;Lcom/oculus/horizon/store/StoreAssetMedia;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/StoreSection;",
            ">;",
            "Lcom/oculus/model/StyleTheme;",
            "Lcom/oculus/horizon/store/StoreAssetMedia;",
            "Lcom/oculus/horizon/store/StoreAssetMedia;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/StoreWideOfferModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/oculus/horizon/store/StoreModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 30
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreModel;->headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    .line 31
    iput-object p4, p0, Lcom/oculus/horizon/store/StoreModel;->footerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    .line 32
    iput-object p5, p0, Lcom/oculus/horizon/store/StoreModel;->storeWideOffers:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getStoreSection(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreSection;

    .line 79
    iget-object v2, v0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the name of category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->headerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->footerAssetMedia:Lcom/oculus/horizon/store/StoreAssetMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->storeWideOffers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 53
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    invoke-virtual {v0}, Lcom/oculus/model/StyleTheme;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
