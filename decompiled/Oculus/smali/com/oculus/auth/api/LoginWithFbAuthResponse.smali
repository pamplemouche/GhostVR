.class public Lcom/oculus/auth/api/LoginWithFbAuthResponse;
.super Ljava/lang/Object;
.source "LoginWithFbAuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;,
        Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;
    }
.end annotation


# instance fields
.field public existingEmailConflict:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "existing_email_conflict"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public loginSession:Lcom/oculus/auth/api/LoginWithFbAuthResponse$LoginSession;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_session"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public prefilledAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prefilled_account_info"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
