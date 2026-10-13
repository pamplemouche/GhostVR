.class public Lcom/oculus/horizon/nux360/FBLoginAuthResponse;
.super Ljava/lang/Object;
.source "FBLoginAuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;
    }
.end annotation


# instance fields
.field public existing_email_conflict:Ljava/lang/String;

.field public login_session:Lcom/oculus/horizon/nux360/FBLoginSession;

.field public prefilled_account_info:Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
