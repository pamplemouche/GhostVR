.class public Lcom/oculus/horizon/api/registration/CheckEmailAndPasswordResponse$Data;
.super Ljava/lang/Object;
.source "CheckEmailAndPasswordResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/registration/CheckEmailAndPasswordResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public does_email_exist:Z

.field public is_password_valid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
