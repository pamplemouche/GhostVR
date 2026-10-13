.class public Lcom/oculus/horizon/api/tos/TermsOfServiceRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "TermsOfServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/tos/TermsOfServiceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final locale:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 13
    sget-object v0, Lcom/oculus/horizon/api/tos/TosType;->TOS:Lcom/oculus/horizon/api/tos/TosType;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/tos/TosType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/tos/TermsOfServiceRequest;->type:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/oculus/horizon/api/tos/TermsOfServiceRequest;->locale:Ljava/lang/String;

    .line 15
    return-void
.end method
