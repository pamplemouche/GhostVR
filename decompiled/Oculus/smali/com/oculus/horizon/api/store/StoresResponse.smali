.class public Lcom/oculus/horizon/api/store/StoresResponse;
.super Ljava/lang/Object;
.source "StoresResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/store/StoresResponse$Viewer;
    }
.end annotation


# instance fields
.field public viewer:Lcom/oculus/horizon/api/store/StoresResponse$Viewer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/api/store/StoresResponse;->viewer:Lcom/oculus/horizon/api/store/StoresResponse$Viewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/store/StoresResponse;->viewer:Lcom/oculus/horizon/api/store/StoresResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/store/StoresResponse$Viewer;->app_store:Lcom/oculus/horizon/api/store/StoresResponse$Viewer$AppStore;

    if-nez v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Did not receive a valid StoresResponse from server. Response did not contain app_store"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    return-void
.end method
