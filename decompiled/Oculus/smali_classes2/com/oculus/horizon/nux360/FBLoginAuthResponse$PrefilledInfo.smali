.class public Lcom/oculus/horizon/nux360/FBLoginAuthResponse$PrefilledInfo;
.super Ljava/lang/Object;
.source "FBLoginAuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/FBLoginAuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefilledInfo"
.end annotation


# instance fields
.field public all_emails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public email:Ljava/lang/String;

.field public facebook_id:Ljava/lang/String;

.field public fb_access_token:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public profile_pic_uri:Ljava/lang/String;

.field public username_suggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
