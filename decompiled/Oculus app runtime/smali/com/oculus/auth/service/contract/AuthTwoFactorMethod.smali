.class public Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;
.super Ljava/lang/Object;
.source "AuthTwoFactorMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enterCodeOption:Z

.field public id:Ljava/lang/String;

.field public instructions:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public resendText:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public sendOption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod$1;

    invoke-direct {v0}, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod$1;-><init>()V

    sput-object v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->id:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->label:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->instructions:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->sendOption:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->resendText:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->enterCodeOption:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->id:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->label:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->instructions:Ljava/lang/String;

    .line 24
    iput-boolean p4, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->sendOption:Z

    .line 25
    iput-object p5, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->resendText:Ljava/lang/String;

    .line 26
    iput-boolean p6, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->enterCodeOption:Z

    return-void
.end method

.method public static marshallParcelableList(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)[B"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 74
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 80
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 75
    new-array p0, p0, [B

    return-object p0
.end method

.method public static unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 89
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 90
    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 91
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 47
    iget-object p2, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->instructions:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-boolean p2, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->sendOption:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    iget-object p2, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->resendText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-boolean p2, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->enterCodeOption:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
