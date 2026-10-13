.class public Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;
.super Ljava/lang/Object;
.source "AuthTwoFactorMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
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
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public sendOption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod$1;

    invoke-direct {v0}, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod$1;-><init>()V

    sput-object v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

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

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->sendOption:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->resendText:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->enterCodeOption:Z

    .line 43
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v1, v2

    .line 42
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "instructions"    # Ljava/lang/String;
    .param p4, "sendOption"    # Z
    .param p5, "resend_text"    # Ljava/lang/String;
    .param p6, "enterCodeOption"    # Z

    .prologue
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

    .line 27
    return-void
.end method

.method public static marshallParcelableList(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "parcelableList":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    const/4 v2, 0x0

    new-array v0, v2, [B

    .line 81
    :goto_0
    return-object v0

    .line 77
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 78
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 80
    .local v0, "bytes":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "blob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 86
    if-nez p0, :cond_1

    move-object v1, v2

    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 89
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v3, p0

    invoke-virtual {v0, p0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 91
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 93
    .local v1, "parcelableList":Ljava/util/ArrayList;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    if-nez v1, :cond_0

    move-object v1, v2

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->instructions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-boolean v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->sendOption:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    iget-object v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->resendText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->enterCodeOption:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    return-void

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0

    :cond_1
    move v1, v2

    .line 52
    goto :goto_1
.end method
