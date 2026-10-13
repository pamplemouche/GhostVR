.class public Lcom/oculus/horizon/api/login/LoginRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "LoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/login/LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final email:Ljava/lang/String;

.field public final fb_access_token:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/oculus/horizon/api/login/LoginRequest;->email:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/oculus/horizon/api/login/LoginRequest;->password:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/oculus/horizon/api/login/LoginRequest;->fb_access_token:Ljava/lang/String;

    .line 18
    return-void
.end method
