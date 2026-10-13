.class public Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationGrouping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cloud_file_is_enabled:Z

.field public iap_items_2:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems;

.field public id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->id:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->cloud_file_is_enabled:Z

    .line 205
    const-class v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->iap_items_2:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems;

    .line 206
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-boolean v0, p0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->cloud_file_is_enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->iap_items_2:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 213
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
