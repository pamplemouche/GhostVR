.class public Lcom/oculus/horizon/api/logout/LogoutResponse;
.super Ljava/lang/Object;
.source "LogoutResponse.java"


# instance fields
.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/oculus/horizon/api/logout/LogoutResponse;->success:Z

    return v0
.end method
