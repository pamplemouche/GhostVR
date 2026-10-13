.class public Lcom/oculus/horizon/registration/RegistrationFormData;
.super Ljava/lang/Object;
.source "RegistrationFormData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/registration/RegistrationFormData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mFirstName:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPin:Ljava/lang/String;

.field private mTermsOfServiceContent:Ljava/lang/String;

.field private mTermsOfServiceId:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/oculus/horizon/registration/RegistrationFormData$1;

    invoke-direct {v0}, Lcom/oculus/horizon/registration/RegistrationFormData$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/registration/RegistrationFormData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mEmail:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mUsername:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mFirstName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mLastName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mPassword:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mPin:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mTermsOfServiceContent:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mTermsOfServiceId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mEmail:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mUsername:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mFirstName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mLastName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mPassword:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mPin:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mTermsOfServiceContent:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mTermsOfServiceId:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mTermsOfServiceContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/registration/RegistrationFormData;->mTermsOfServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
