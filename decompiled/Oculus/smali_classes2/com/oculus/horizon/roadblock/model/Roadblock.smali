.class public Lcom/oculus/horizon/roadblock/model/Roadblock;
.super Ljava/lang/Object;
.source "Roadblock.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/roadblock/model/Roadblock$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/roadblock/model/Roadblock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public arguments:Landroid/os/Bundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/oculus/horizon/roadblock/model/Roadblock$1;

    invoke-direct {v0}, Lcom/oculus/horizon/roadblock/model/Roadblock$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/roadblock/model/Roadblock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->values()[Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/model/Roadblock;->arguments:Landroid/os/Bundle;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/roadblock/model/Roadblock$Type;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    .line 45
    iput-object p2, p0, Lcom/oculus/horizon/roadblock/model/Roadblock;->arguments:Landroid/os/Bundle;

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/model/Roadblock;->roadblockType:Lcom/oculus/horizon/roadblock/model/Roadblock$Type;

    invoke-virtual {v0}, Lcom/oculus/horizon/roadblock/model/Roadblock$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/model/Roadblock;->arguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method
