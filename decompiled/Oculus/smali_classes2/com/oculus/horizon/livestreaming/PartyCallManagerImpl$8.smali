.class Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$8;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PartyCallManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->markNUXSeen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$8;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 346
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$8;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 348
    return-void
.end method
