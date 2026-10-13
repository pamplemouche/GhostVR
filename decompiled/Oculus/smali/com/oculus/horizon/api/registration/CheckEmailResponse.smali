.class public Lcom/oculus/horizon/api/registration/CheckEmailResponse;
.super Ljava/lang/Object;
.source "CheckEmailResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/registration/CheckEmailResponse$Data;
    }
.end annotation


# instance fields
.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/api/registration/CheckEmailResponse$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    iget-object v0, p0, Lcom/oculus/horizon/api/registration/CheckEmailResponse;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/registration/CheckEmailResponse$Data;

    iget-boolean v0, v0, Lcom/oculus/horizon/api/registration/CheckEmailResponse$Data;->does_email_exist:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/api/registration/CheckEmailResponse;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "CheckEmailResponse data was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/registration/CheckEmailResponse;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "CheckEmailResponse data was empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    return-void
.end method
