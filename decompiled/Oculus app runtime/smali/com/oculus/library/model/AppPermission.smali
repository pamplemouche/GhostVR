.class public Lcom/oculus/library/model/AppPermission;
.super Ljava/lang/Object;
.source "AppPermission.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.oculus.library.model.AppPermission"


# instance fields
.field public final group:Ljava/lang/String;

.field public final groupPriority:I

.field public final isDangerous:Z

.field public final key:Ljava/lang/String;

.field public final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/oculus/library/model/AppPermission$1;

    invoke-direct {v0}, Lcom/oculus/library/model/AppPermission$1;-><init>()V

    sput-object v0, Lcom/oculus/library/model/AppPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/library/model/AppPermission;->key:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/oculus/library/model/AppPermission;->isDangerous:Z

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/library/model/AppPermission;->label:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/library/model/AppPermission;->group:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/oculus/library/model/AppPermission;->groupPriority:I

    .line 33
    iget-object p1, p0, Lcom/oculus/library/model/AppPermission;->key:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 34
    sget-object p1, Lcom/oculus/library/model/AppPermission;->TAG:Ljava/lang/String;

    const-string v0, "Invalid key received: null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/oculus/library/model/AppPermission;->TAG:Ljava/lang/String;

    const-string v1, "Invalid key received: null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/oculus/library/model/AppPermission;->key:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, Lcom/oculus/library/model/AppPermission;->isDangerous:Z

    .line 22
    iput-object p3, p0, Lcom/oculus/library/model/AppPermission;->label:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/oculus/library/model/AppPermission;->group:Ljava/lang/String;

    .line 24
    iput p5, p0, Lcom/oculus/library/model/AppPermission;->groupPriority:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/oculus/library/model/AppPermission;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-boolean p2, p0, Lcom/oculus/library/model/AppPermission;->isDangerous:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object p2, p0, Lcom/oculus/library/model/AppPermission;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/oculus/library/model/AppPermission;->group:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget p2, p0, Lcom/oculus/library/model/AppPermission;->groupPriority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
