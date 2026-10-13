.class public Lcom/oculus/horizon/api/profile/ChangePinRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "ChangePinRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/profile/ChangePinResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final password:Ljava/lang/String;

.field public final pin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/oculus/horizon/api/profile/ChangePinRequest;->password:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/oculus/horizon/api/profile/ChangePinRequest;->pin:Ljava/lang/String;

    .line 15
    return-void
.end method
