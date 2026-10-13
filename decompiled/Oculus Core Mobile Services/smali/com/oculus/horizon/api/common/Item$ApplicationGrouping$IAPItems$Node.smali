.class public Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems$Node;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems$Node$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems$Node$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems$Node;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems$Node;->id:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems$Node;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return-void
.end method
