.class public Lcom/oculus/horizon/nux360/RegistrationData;
.super Ljava/lang/Object;
.source "RegistrationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    }
.end annotation


# instance fields
.field private final mApplicationsToDownload:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoreApplications:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmail:Ljava/lang/String;

.field private final mFirstName:Ljava/lang/String;

.field private final mLastName:Ljava/lang/String;

.field private final mMarketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

.field private final mPassword:Ljava/lang/String;

.field private final mPin:Ljava/lang/String;

.field private final mTermsOfServiceContent:Ljava/lang/String;

.field private final mTermsOfServiceId:Ljava/lang/String;

.field private final mUsername:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mEmail:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mUsername:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mFirstName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mLastName:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mPassword:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mPin:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mTermsOfServiceContent:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mTermsOfServiceId:Ljava/lang/String;

    .line 47
    iput-object p9, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mMarketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    .line 48
    iput-object p10, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mApplicationsToDownload:Lcom/google/common/collect/ImmutableList;

    .line 49
    iput-object p11, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mCoreApplications:Lcom/google/common/collect/ImmutableList;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/oculus/horizon/nux360/RegistrationData$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p11}, Lcom/oculus/horizon/nux360/RegistrationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public createRegistrationRequest(Ljava/util/Locale;)Lcom/oculus/horizon/api/registration/RegisterRequest;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/oculus/horizon/api/registration/RegisterRequest;

    invoke-direct {v0}, Lcom/oculus/horizon/api/registration/RegisterRequest;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mUsername:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/horizon/api/registration/RegisterRequest;->username:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/horizon/api/registration/RegisterRequest;->email:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mFirstName:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/horizon/api/registration/RegisterRequest;->firstName:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mLastName:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/horizon/api/registration/RegisterRequest;->lastName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/horizon/api/registration/RegisterRequest;->preferredLocale:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/horizon/api/registration/RegisterRequest;->password:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mPin:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/horizon/api/registration/RegisterRequest;->pin:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mTermsOfServiceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/horizon/api/registration/RegisterRequest;->tosAgreedId:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mMarketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/horizon/api/registration/RegisterRequest;->marketingEmailOptInStatus:Ljava/lang/String;

    .line 107
    return-object v0
.end method

.method public getApplicationsToDownload()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mApplicationsToDownload:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getCoreApplications()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mCoreApplications:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingEmailOptInStatus()Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mMarketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mPin:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mTermsOfServiceContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mTermsOfServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData;->mUsername:Ljava/lang/String;

    return-object v0
.end method
