.class public Lcom/oculus/horizon/api/logout/LogoutRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "LogoutRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/logout/LogoutResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final device_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oculus/horizon/api/logout/LogoutRequest;->device_id:Ljava/lang/String;

    .line 13
    return-void
.end method
