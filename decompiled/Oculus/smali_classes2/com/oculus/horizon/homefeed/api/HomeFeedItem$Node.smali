.class public Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;
.super Ljava/lang/Object;
.source "HomeFeedItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/homefeed/api/HomeFeedItem;
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
            "Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_name"
    .end annotation
.end field

.field public iconImage:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_image"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public typename:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "__typename"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node$1;

    invoke-direct {v0}, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->id:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->typename:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->displayName:Ljava/lang/String;

    .line 205
    const-class v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->iconImage:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    .line 206
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->typename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;->iconImage:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 232
    return-void
.end method
