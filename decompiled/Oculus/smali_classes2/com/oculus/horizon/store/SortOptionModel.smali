.class public Lcom/oculus/horizon/store/SortOptionModel;
.super Ljava/lang/Object;
.source "SortOptionModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/SortOptionModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final isDefault:Z

.field public final isDefaultDescending:Z

.field public final optionName:Ljava/lang/String;

.field public final reverseSortOrder:Ljava/lang/String;

.field public final sortOrder:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/oculus/horizon/store/SortOptionModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/SortOptionModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/SortOptionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->typeName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->isDefault:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->optionName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->displayName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->sortOrder:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->reverseSortOrder:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/oculus/horizon/store/SortOptionModel;->isDefaultDescending:Z

    .line 43
    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0

    :cond_1
    move v1, v2

    .line 42
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oculus/horizon/store/SortOptionModel;->typeName:Ljava/lang/String;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->isDefault:Z

    .line 28
    iput-object p3, p0, Lcom/oculus/horizon/store/SortOptionModel;->optionName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/oculus/horizon/store/SortOptionModel;->displayName:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/oculus/horizon/store/SortOptionModel;->sortOrder:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/oculus/horizon/store/SortOptionModel;->reverseSortOrder:Ljava/lang/String;

    .line 32
    iput-boolean p7, p0, Lcom/oculus/horizon/store/SortOptionModel;->isDefaultDescending:Z

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->typeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->isDefault:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->optionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->sortOrder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->reverseSortOrder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-boolean v0, p0, Lcom/oculus/horizon/store/SortOptionModel;->isDefaultDescending:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    :cond_1
    move v1, v2

    .line 53
    goto :goto_1
.end method
