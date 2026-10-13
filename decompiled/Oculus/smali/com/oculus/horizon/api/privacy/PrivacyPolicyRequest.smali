.class public Lcom/oculus/horizon/api/privacy/PrivacyPolicyRequest;
.super Lcom/oculus/horizon/api/tos/TermsOfServiceRequest;
.source "PrivacyPolicyRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/oculus/horizon/api/tos/TermsOfServiceRequest;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/oculus/horizon/api/tos/TosType;->PRIVACY_POLICY:Lcom/oculus/horizon/api/tos/TosType;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/tos/TosType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/privacy/PrivacyPolicyRequest;->type:Ljava/lang/String;

    .line 14
    return-void
.end method
