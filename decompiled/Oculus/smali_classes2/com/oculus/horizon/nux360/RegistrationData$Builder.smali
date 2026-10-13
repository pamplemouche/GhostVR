.class public Lcom/oculus/horizon/nux360/RegistrationData$Builder;
.super Ljava/lang/Object;
.source "RegistrationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/RegistrationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mApplicationsToDownload:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mCoreApplications:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmail:Ljava/lang/String;

.field private mFirstName:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field private mMarketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

.field private mPassword:Ljava/lang/String;

.field private mPin:Ljava/lang/String;

.field private mTermsOfServiceContent:Ljava/lang/String;

.field private mTermsOfServiceId:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mEmail:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mUsername:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mFirstName:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mLastName:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mPassword:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mPin:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mTermsOfServiceContent:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mTermsOfServiceId:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->UNKNOWN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mMarketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/nux360/RegistrationData;)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mEmail:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mUsername:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mFirstName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mLastName:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mPassword:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getPin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mPin:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getTermsOfServiceContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mTermsOfServiceContent:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getTermsOfServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mTermsOfServiceId:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getMarketingEmailOptInStatus()Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mMarketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    .line 146
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getApplicationsToDownload()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mApplicationsToDownload:Lcom/google/common/collect/ImmutableList;

    .line 147
    invoke-virtual {p1}, Lcom/oculus/horizon/nux360/RegistrationData;->getCoreApplications()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mCoreApplications:Lcom/google/common/collect/ImmutableList;

    .line 148
    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/nux360/RegistrationData;
    .locals 13

    .prologue
    .line 151
    new-instance v0, Lcom/oculus/horizon/nux360/RegistrationData;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mFirstName:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mLastName:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mPassword:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mPin:Ljava/lang/String;

    iget-object v7, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mTermsOfServiceContent:Ljava/lang/String;

    iget-object v8, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mTermsOfServiceId:Ljava/lang/String;

    iget-object v9, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mMarketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    iget-object v10, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mApplicationsToDownload:Lcom/google/common/collect/ImmutableList;

    iget-object v11, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mCoreApplications:Lcom/google/common/collect/ImmutableList;

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/oculus/horizon/nux360/RegistrationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/oculus/horizon/nux360/RegistrationData$1;)V

    return-object v0
.end method

.method public setApplicationsToDownload(Ljava/util/List;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;)",
            "Lcom/oculus/horizon/nux360/RegistrationData$Builder;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mApplicationsToDownload:Lcom/google/common/collect/ImmutableList;

    .line 213
    return-object p0
.end method

.method public setCoreApplications(Lcom/oculus/horizon/api/common/MinimumAppVersion;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p1, Lcom/oculus/horizon/api/common/MinimumAppVersion;->required_versions:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mCoreApplications:Lcom/google/common/collect/ImmutableList;

    .line 218
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mEmail:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mFirstName:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mLastName:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setMarketingEmailOptInStatus(Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mMarketingEmailOptInStatus:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    .line 208
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mPassword:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public setPin(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mPin:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public setTermsOfServiceId(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mTermsOfServiceId:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->mUsername:Ljava/lang/String;

    .line 187
    return-object p0
.end method
