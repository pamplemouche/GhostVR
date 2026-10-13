.class public Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity;
.super Ljava/lang/Object;
.source "SocialActivityResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/api/SocialActivityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocialActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity$Application;
    }
.end annotation


# instance fields
.field public application:Lcom/oculus/horizon/social/api/SocialActivityResponse$SocialActivity$Application;

.field public deeplink:Ljava/lang/String;

.field public image:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
